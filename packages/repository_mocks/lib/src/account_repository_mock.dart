import 'package:models/models.dart';
import 'package:repository/repositories.dart';

class AccountRepositoryMock implements AccountRepository {
  final List<Account> _accounts = [
    Account(
      id: 1,
      userId: 1,
      name: 'Основной счет',
      balance: const Money(amount: '1000', currency: Currency.rub),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
  ];
  int _nextId = 1;

  @override
  Future<List<Account>> getAllAccounts() async {
    return List<Account>.from(_accounts);
  }

  @override
  Future<Account?> getAccountById(int id) async {
    return _accounts.firstWhere(
      (a) => a.id == id,
      orElse: () => throw NotFoundException('Account not found'),
    );
  }

  @override
  Future<AccountSummary?> getAccountSummary(int id) async {
    final account = _accounts.firstWhere(
      (a) => a.id == id,
      orElse: () => throw NotFoundException('Account not found'),
    );
    return AccountSummary(
      account: account,
      totalIncome: Money(amount: '0', currency: account.balance.currency),
      totalExpense: Money(amount: '0', currency: account.balance.currency),
      incomeStats: const [],
      expenseStats: const [],
    );
  }

  @override
  Future<Account> createAccount({
    required String name,
    required Money initialBalance,
  }) async {
    final account = Account(
      id: _nextId++,
      userId: 1,
      name: name,
      balance: initialBalance,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    _accounts.add(account);
    return account;
  }

  @override
  Future<Account> updateAccount({
    required int id,
    String? name,
    Money? balance,
  }) async {
    final index = _accounts.indexWhere((a) => a.id == id);
    if (index == -1) throw NotFoundException('Account not found');
    final old = _accounts[index];
    final updated = old.copyWith(
      name: name ?? old.name,
      balance: balance ?? old.balance,
      updatedAt: DateTime.now(),
    );
    _accounts[index] = updated;
    return updated;
  }
}
