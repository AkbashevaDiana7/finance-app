import 'package:flutter/foundation.dart' show VoidCallback;
import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yx_scope/yx_scope.dart';

import 'state.dart';

/// Интерфейс для управления операциями с транзакциями на странице добавления/редактирования
abstract interface class AddPageManagerInterface {
  Future<Transaction> saveTransaction();

  Future<void> deleteTransaction();

  void discardChanges();

  void updateAccount(Account account);

  void updateCategory(Category category);

  void updateAmount(Money amount);

  void updateTransactionDate(DateTime date);

  void updateComment(String? comment);

  bool get isNewTransaction;

  bool get canDelete;
}

/// Менеджер для управления операциями с транзакциями на странице добавления/редактирования
class AddPageManager implements AsyncLifecycle, AddPageManagerInterface {
  final TransactionRepository _transactionRepository;
  final AccountRepository _accountRepository;
  final CategoryRepository _categoryRepository;

  final BehaviorSubject<AddPageState> _stateHolder;
  final int _transactionId;
  final bool _income;

  final VoidCallback _close;

  const AddPageManager({
    required TransactionRepository transactionRepository,
    required AccountRepository accountRepository,
    required CategoryRepository categoryRepository,
    required BehaviorSubject<AddPageState> stateHolder,
    int transactionId = 0,
    required VoidCallback close,
    required bool income,
  }) : _transactionRepository = transactionRepository,
       _accountRepository = accountRepository,
       _categoryRepository = categoryRepository,
       _stateHolder = stateHolder,
       _transactionId = transactionId,
       _close = close,
       _income = income;

  @override
  Future<Transaction> saveTransaction() async {
    final currentState = _stateHolder.value;
    final transaction = currentState.transaction;

    _close();
    if (transaction.id == 0) {
      return await _createTransaction(currentState);
    } else {
      return await _updateTransaction(currentState);
    }
  }

  @override
  Future<void> deleteTransaction() async {
    final currentState = _stateHolder.value;
    final transaction = currentState.transaction;

    if (transaction.id != 0) {
      await _transactionRepository.deleteTransaction(transaction.id);
    }
    _close();
  }

  @override
  void updateAccount(Account account) {
    final currentState = _stateHolder.value;
    final updatedTransaction = currentState.transaction.copyWith(
      accountId: account.id,
    );

    _stateHolder.add(
      currentState.copyWith(account: account, transaction: updatedTransaction),
    );
  }

  @override
  void updateCategory(Category category) {
    final currentState = _stateHolder.value;
    final updatedTransaction = currentState.transaction.copyWith(
      categoryId: category.id,
    );

    _stateHolder.add(
      currentState.copyWith(
        category: category,
        transaction: updatedTransaction,
      ),
    );
  }

  @override
  void updateAmount(Money amount) {
    final currentState = _stateHolder.value;
    final updatedTransaction = currentState.transaction.copyWith(
      amount: amount,
    );

    _stateHolder.add(currentState.copyWith(transaction: updatedTransaction));
  }

  @override
  void updateTransactionDate(DateTime date) {
    final currentState = _stateHolder.value;
    final updatedTransaction = currentState.transaction.copyWith(
      transactionDate: date,
    );

    _stateHolder.add(currentState.copyWith(transaction: updatedTransaction));
  }

  @override
  void updateComment(String? comment) {
    final currentState = _stateHolder.value;
    final updatedTransaction = currentState.transaction.copyWith(
      comment: comment,
    );

    _stateHolder.add(currentState.copyWith(transaction: updatedTransaction));
  }

  @override
  bool get isNewTransaction => _stateHolder.value.transaction.id == 0;

  @override
  bool get canDelete => !isNewTransaction;

  Future<Transaction> _createTransaction(AddPageState state) async =>
      await _transactionRepository.createTransaction(
        accountId: state.transaction.accountId,
        categoryId: state.transaction.categoryId,
        amount: state.transaction.amount,
        transactionDate: state.transaction.transactionDate,
        comment: state.transaction.comment,
      );

  Future<Transaction> _updateTransaction(AddPageState state) async =>
      await _transactionRepository.updateTransaction(
        id: state.transaction.id,
        accountId: state.transaction.accountId,
        categoryId: state.transaction.categoryId,
        amount: state.transaction.amount,
        transactionDate: state.transaction.transactionDate,
        comment: state.transaction.comment,
      );

  Future<AddPageState> _loadExistingTransaction(int transactionId) async {
    final transaction = await _transactionRepository.getTransactionById(
      transactionId,
    );
    if (transaction == null) {
      throw Exception('Transaction with ID $transactionId not found');
    }

    final account = await _accountRepository.getAccountById(
      transaction.accountId,
    );
    if (account == null) {
      throw Exception('Account with ID ${transaction.accountId} not found');
    }

    final allCategories = await _categoryRepository.getAllCategories();
    final category = allCategories.firstWhere(
      (c) => c.id == transaction.categoryId,
      orElse:
          () =>
              throw Exception(
                'Category with ID ${transaction.categoryId} not found',
              ),
    );

    return AddPageState(
      transaction: transaction,
      account: account,
      category: category,
    );
  }

  @override
  Future<void> dispose() async {}

  @override
  Future<void> init() async {
    if (_transactionId != 0) {
      final state = await _loadExistingTransaction(_transactionId);
      _stateHolder.add(state);
    } else {
      final accounts = await _accountRepository.getAllAccounts();
      final categories =
          _income
              ? await _categoryRepository.getIncomeCategories()
              : await _categoryRepository.getExpenseCategories();

      final now = DateTime.now();

      final defaultAccount =
          accounts.firstOrNull ?? (throw Exception('No accounts'));
      final defaultCategory =
          categories.firstOrNull ?? (throw Exception('No categories'));

      final defaultTransaction = Transaction(
        id: 0, // ID = 0 означает новую транзакцию
        accountId: defaultAccount.id,
        categoryId: defaultCategory.id,
        amount: const Money(amount: '0', currency: Currency.rub),
        transactionDate: now,
        comment: null,
        createdAt: now,
        updatedAt: now,
      );

      final state = AddPageState(
        transaction: defaultTransaction,
        account: defaultAccount,
        category: defaultCategory,
      );

      _stateHolder.add(state);
    }
  }

  @override
  void discardChanges() => _close();
}
