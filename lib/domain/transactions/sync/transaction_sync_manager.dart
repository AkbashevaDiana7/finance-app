import 'dart:async';

import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:rxdart/rxdart.dart';

import '../events/event_store.dart';
import '../events/transaction_event.dart';

class TransactionSyncManager implements TransactionRepository {
  final TransactionRepository primary;
  final TransactionRepository secondary;
  final TransactionEventStore _eventStore;
  final _eventController = BehaviorSubject<TransactionEvent>();

  TransactionSyncManager({
    required this.primary,
    required this.secondary,
    required TransactionEventStore eventStore,
  }) : _eventStore = eventStore {
    _subscribeToEvents();
  }

  Stream<TransactionEvent> get events => _eventController.stream;

  void _subscribeToEvents() {
    _eventController.listen((event) async {
      final success = await _handleEvent(event);
      if (success) {
        // Remove event only if it was successfully applied
        await _eventStore.saveEvents(
          (await _eventStore.getEvents()).where((e) => e != event).toList(),
        );
      }
      // If failed, event stays in the store for retry
    });
  }

  Future<bool> _handleEvent(TransactionEvent event) async {
    try {
      await event.when(
        created: (accountId, categoryId, amount, transactionDate, comment) =>
            _handleCreate(
          accountId: accountId,
          categoryId: categoryId,
          amount: amount,
          transactionDate: transactionDate,
          comment: comment,
        ),
        updated:
            (id, accountId, categoryId, amount, transactionDate, comment) =>
                _handleUpdate(
          id: id,
          accountId: accountId,
          categoryId: categoryId,
          amount: amount,
          transactionDate: transactionDate,
          comment: comment,
        ),
        deleted: (id) => _handleDelete(id),
      );
      return true; // Event handled successfully
    } catch (e) {
      print('Failed to handle event: $e'); // Consider using proper logging
      return false; // Event handling failed
    }
  }

  Future<void> _handleCreate({
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
  }) async {
    await secondary.createTransaction(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );
  }

  Future<void> _handleUpdate({
    required int id,
    int? accountId,
    int? categoryId,
    Money? amount,
    DateTime? transactionDate,
    String? comment,
  }) async {
    await secondary.updateTransaction(
      id: id,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );
  }

  Future<void> _handleDelete(int id) async {
    await secondary.deleteTransaction(id);
  }

  /// Initializes the sync manager by:
  /// 1. Replaying stored events to restore state
  /// 2. Syncing primary and secondary repositories
  Future<void> initialize() async {
    // First, replay stored events
    final storedEvents = await _eventStore.getEvents();
    for (final event in storedEvents) {
      final success = await _handleEvent(event);
      if (success) {
        // Remove event only if it was successfully applied
        await _eventStore.saveEvents(
          (await _eventStore.getEvents()).where((e) => e != event).toList(),
        );
      }
    }

    // Then sync repositories
    final primaryTransactions = await primary.getAllTransactions();
    for (final transaction in primaryTransactions) {
      try {
        await secondary.createTransaction(
          accountId: transaction.accountId,
          categoryId: transaction.categoryId,
          amount: transaction.amount,
          transactionDate: transaction.transactionDate,
          comment: transaction.comment,
        );
      } catch (e) {
        // If sync fails, create an event to retry later
        await _eventStore.saveEvent(
          TransactionEvent.created(
            accountId: transaction.accountId,
            categoryId: transaction.categoryId,
            amount: transaction.amount,
            transactionDate: transaction.transactionDate,
            comment: transaction.comment,
          ),
        );
      }
    }
  }

  @override
  Future<Transaction> createTransaction({
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
  }) async {
    final created = await primary.createTransaction(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );

    final event = TransactionEvent.created(
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );

    await _eventStore.saveEvent(event);
    _eventController.add(event);

    return created;
  }

  @override
  Future<Transaction> updateTransaction({
    required int id,
    int? accountId,
    int? categoryId,
    Money? amount,
    DateTime? transactionDate,
    String? comment,
  }) async {
    final updated = await primary.updateTransaction(
      id: id,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );

    final event = TransactionEvent.updated(
      id: id,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
    );

    await _eventStore.saveEvent(event);
    _eventController.add(event);

    return updated;
  }

  @override
  Future<void> deleteTransaction(int id) async {
    await primary.deleteTransaction(id);

    final event = TransactionEvent.deleted(id);
    await _eventStore.saveEvent(event);
    _eventController.add(event);
  }

  @override
  Future<List<Transaction>> getAllTransactions() =>
      primary.getAllTransactions();

  @override
  Future<Transaction?> getTransactionById(int id) =>
      primary.getTransactionById(id);

  Future<void> dispose() async {
    await _eventController.close();
  }
}
