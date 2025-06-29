import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:models/models.dart' as models;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:repository/repositories.dart';

part 'persistent_account_repository.g.dart';

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

// Accounts table
class Accounts extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get balance => text().map(const MoneyConverter())();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
}

// Drift database
@DriftDatabase(tables: [Accounts])
class AccountDatabase extends _$AccountDatabase {
  AccountDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() => LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'accounts.sqlite'));
    return NativeDatabase(file);
  });
}

// Persistent implementation of AccountRepository
class PersistentAccountRepository implements AccountRepository {
  final AccountDatabase _database;

  PersistentAccountRepository(this._database);

  @override
  Future<List<models.Account>> getAllAccounts() async {
    final results = await _database.select(_database.accounts).get();
    return results.map(_mapToAccount).toList();
  }

  @override
  Future<models.Account?> getAccountById(int id) async {
    try {
      final result =
          await (_database.select(_database.accounts)
            ..where((a) => a.id.equals(id))).getSingleOrNull();

      return result != null ? _mapToAccount(result) : null;
    } catch (e) {
      if (e.toString().contains('not found')) {
        return null;
      }
      rethrow;
    }
  }

  @override
  Future<models.AccountSummary?> getAccountSummary(int id) async {
    final account = await getAccountById(id);
    if (account == null) {
      return null;
    }

    // For now, return a basic summary with zero stats
    // In a real implementation, you would calculate these from transactions
    return models.AccountSummary(
      account: account,
      totalIncome: models.Money(
        amount: '0',
        currency: account.balance.currency,
      ),
      totalExpense: models.Money(
        amount: '0',
        currency: account.balance.currency,
      ),
      incomeStats: const [],
      expenseStats: const [],
    );
  }

  @override
  Future<models.Account> createAccount({
    required String name,
    required models.Money initialBalance,
  }) async {
    final now = DateTime.now();

    final id = await _database
        .into(_database.accounts)
        .insert(
          AccountsCompanion.insert(
            userId: 1, // Default user ID for now
            name: name,
            balance: initialBalance,
            createdAt: now,
            updatedAt: now,
          ),
        );

    return models.Account(
      id: id,
      userId: 1,
      name: name,
      balance: initialBalance,
      createdAt: now,
      updatedAt: now,
    );
  }

  @override
  Future<models.Account> updateAccount({
    required int id,
    String? name,
    models.Money? balance,
  }) async {
    // Get existing account
    final existing = await getAccountById(id);
    if (existing == null) {
      throw NotFoundException('Account with ID $id not found');
    }

    final now = DateTime.now();

    final companion = AccountsCompanion(
      id: Value(id),
      userId: Value(existing.userId),
      name: Value(name ?? existing.name),
      balance: Value(balance ?? existing.balance),
      createdAt: Value(existing.createdAt),
      updatedAt: Value(now),
    );

    await (_database.update(_database.accounts)
      ..where((a) => a.id.equals(id))).write(companion);

    return models.Account(
      id: id,
      userId: existing.userId,
      name: name ?? existing.name,
      balance: balance ?? existing.balance,
      createdAt: existing.createdAt,
      updatedAt: now,
    );
  }

  models.Account _mapToAccount(Account data) => models.Account(
    id: data.id,
    userId: data.userId,
    name: data.name,
    balance: data.balance,
    createdAt: data.createdAt,
    updatedAt: data.updatedAt,
  );

  Future<void> close() => _database.close();
}
