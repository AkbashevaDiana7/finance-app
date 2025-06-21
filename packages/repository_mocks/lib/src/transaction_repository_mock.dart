import 'package:models/models.dart';
import 'package:repository/repositories.dart';

class TransactionRepositoryMock implements TransactionRepository {
  final List<Transaction> _transactions = [
    ...List.generate(10000, (index) {
      final date = DateTime.now().subtract(
        Duration(days: index ~/ 20, minutes: 10),
      );

      return Transaction(
        id: index + 1,
        accountId: 1,
        categoryId: index % 12 + 1,
        amount: Money(amount: '${index + 1} 000', currency: Currency.rub),
        comment: index % 7 == 0 ? 'comment $index' : null,
        transactionDate: date,
        createdAt: date,
        updatedAt: date,
      );
    }),
  ];
  int _nextId = 1;

  @override
  Future<Transaction?> getTransactionById(int id) async {
    return _transactions.firstWhere(
      (t) => t.id == id,
      orElse: () => throw NotFoundException('Transaction not found'),
    );
  }

  @override
  Future<List<Transaction>> getAllTransactions() async =>
      List<Transaction>.unmodifiable(_transactions);

  @override
  Future<Transaction> createTransaction({
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
  }) async {
    final transaction = Transaction(
      id: _nextId++,
      accountId: accountId,
      categoryId: categoryId,
      amount: amount,
      transactionDate: transactionDate,
      comment: comment,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    _transactions.add(transaction);
    return transaction;
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
    final index = _transactions.indexWhere((t) => t.id == id);
    if (index == -1) throw NotFoundException('Transaction not found');
    final old = _transactions[index];
    final updated = old.copyWith(
      accountId: accountId ?? old.accountId,
      categoryId: categoryId ?? old.categoryId,
      amount: amount ?? old.amount,
      transactionDate: transactionDate ?? old.transactionDate,
      comment: comment ?? old.comment,
      updatedAt: DateTime.now(),
    );
    _transactions[index] = updated;
    return updated;
  }

  @override
  Future<void> deleteTransaction(int id) async {
    final index = _transactions.indexWhere((t) => t.id == id);
    if (index == -1) throw NotFoundException('Transaction not found');
    _transactions.removeAt(index);
  }
}
