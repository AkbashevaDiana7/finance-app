import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:models/models.dart' as models;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:repository/repositories.dart';

part 'persistence_data_source.g.dart';

// Type converter for Money
class MoneyConverter extends TypeConverter<models.Money, String> {
  const MoneyConverter();

  @override
  models.Money fromSql(String fromDb) {
    final parts = fromDb.split('|');
    if (parts.length != 2) {
      throw ArgumentError('Invalid money format in database: $fromDb');
    }
    return models.Money(
      amount: parts[0],
      currency: models.Currency.fromCode(parts[1]),
    );
  }

  @override
  String toSql(models.Money value) => '${value.amount}|${value.currency.code}';
}

// Transactions table
class Transactions extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get accountId => integer()();
  IntColumn get categoryId => integer()();
  TextColumn get amount => text().map(const MoneyConverter())();
  DateTimeColumn get transactionDate => dateTime()();
  TextColumn get comment => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

// Drift database
@DriftDatabase(tables: [Transactions])
class TransactionDatabase extends _$TransactionDatabase {
  TransactionDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'transactions.sqlite'));
      return NativeDatabase(file);
    });
  }
}

// Persistent implementation of TransactionRepository
class PersistentTransactionRepository implements TransactionRepository {
  final TransactionDatabase _database;

  PersistentTransactionRepository(this._database);

  @override
  Future<models.Transaction?> getTransactionById(int id) async {
    try {
      final result =
          await (_database.select(_database.transactions)
            ..where((t) => t.id.equals(id))).getSingleOrNull();

      return result != null ? _mapToTransaction(result) : null;
    } catch (e) {
      if (e.toString().contains('not found')) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<List<models.Transaction>> getAllTransactions() async {
    final results = await _database.select(_database.transactions).get();
    return results.map(_mapToTransaction).toList();
  }

  @override
  Future<models.Transaction> createTransaction({
    required int accountId,
    required int categoryId,
    required models.Money amount,
    required DateTime transactionDate,
    String? comment,
  }) async {
    final now = DateTime.now();

    final id = await _database
        .into(_database.transactions)
        .insert(
          TransactionsCompanion.insert(
            accountId: accountId,
            categoryId: categoryId,
            amount: amount,
            transactionDate: transactionDate,
            comment: Value(comment),
            createdAt: now,
            updatedAt: now,
          ),
        );

    return models.Transaction(
      id: id,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
      createdAt: now,
      updatedAt: now,
    );
  }

  @override
  Future<models.Transaction> updateTransaction({
    required int id,
    int? accountId,
    int? categoryId,
    models.Money? amount,
    DateTime? transactionDate,
    String? comment,
  }) async {
    // Get existing transaction
    final existing = await getTransactionById(id);
    if (existing == null) {
      throw NotFoundException('Transaction with ID $id not found');
    }

    final now = DateTime.now();

    final companion = TransactionsCompanion(
      id: Value(id),
      accountId: Value(accountId ?? existing.accountId),
      categoryId: Value(categoryId ?? existing.categoryId),
      amount: Value(amount ?? existing.amount),
      transactionDate: Value(transactionDate ?? existing.transactionDate),
      comment: Value(comment ?? existing.comment),
      createdAt: Value(existing.createdAt),
      updatedAt: Value(now),
    );

    await (_database.update(_database.transactions)
      ..where((t) => t.id.equals(id))).write(companion);

    return models.Transaction(
      id: id,
      accountId: accountId ?? existing.accountId,
      categoryId: categoryId ?? existing.categoryId,
      amount: amount ?? existing.amount,
      transactionDate: transactionDate ?? existing.transactionDate,
      comment: comment ?? existing.comment,
      createdAt: existing.createdAt,
      updatedAt: now,
    );
  }

  @override
  Future<void> deleteTransaction(int id) async {
    final deletedRows =
        await (_database.delete(_database.transactions)
          ..where((t) => t.id.equals(id))).go();

    if (deletedRows == 0) {
      throw NotFoundException('Transaction with ID $id not found');
    }
  }

  models.Transaction _mapToTransaction(Transaction data) => models.Transaction(
    id: data.id,
    accountId: data.accountId,
    categoryId: data.categoryId,
    amount: data.amount,
    transactionDate: data.transactionDate,
    comment: data.comment,
    createdAt: data.createdAt,
    updatedAt: data.updatedAt,
  );

  Future<void> close() => _database.close();
}
