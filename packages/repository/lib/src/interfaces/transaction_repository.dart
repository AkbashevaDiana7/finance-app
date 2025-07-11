import 'package:models/models.dart';

/// Репозиторий для работы с транзакциями
abstract interface class TransactionRepository {
  Future<Transaction?> getTransactionById(int id);

  Future<List<Transaction>> getAllTransactions();

  Future<Transaction> createTransaction({
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
  });

  Future<Transaction> updateTransaction({
    required int id,
    int? accountId,
    int? categoryId,
    Money? amount,
    DateTime? transactionDate,
    String? comment,
  });

  Future<void> deleteTransaction(int id);
}
