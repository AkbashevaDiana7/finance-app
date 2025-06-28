// ignore_for_file: avoid_print

import 'package:models/models.dart';

import 'persistence_data_source.dart';

/// Пример использования персистентного репозитория транзакций
class TransactionRepositoryExample {
  static Future<void> example() async {
    // Создание базы данных и репозитория
    final database = TransactionDatabase();
    final repository = PersistentTransactionRepository(database);

    try {
      // Создание новой транзакции
      final newTransaction = await repository.createTransaction(
        accountId: 1,
        categoryId: 2,
        amount: const Money(amount: '1500', currency: Currency.rub),
        transactionDate: DateTime.now(),
        comment: 'Покупка продуктов',
      );

      print('Создана транзакция с ID: ${newTransaction.id}');

      // Получение всех транзакций
      final allTransactions = await repository.getAllTransactions();
      print('Всего транзакций: ${allTransactions.length}');

      // Получение транзакции по ID
      final foundTransaction = await repository.getTransactionById(
        newTransaction.id,
      );
      if (foundTransaction != null) {
        print('Найдена транзакция: ${foundTransaction.comment}');
      }

      // Обновление транзакции
      final updatedTransaction = await repository.updateTransaction(
        id: newTransaction.id,
        comment: 'Покупка продуктов (обновлено)',
        amount: const Money(amount: '1600', currency: Currency.rub),
      );
      print('Обновлена транзакция: ${updatedTransaction.comment}');

      // Удаление транзакции
      await repository.deleteTransaction(newTransaction.id);
      print('Транзакция удалена');
    } finally {
      // Обязательно закрыть базу данных
      await repository.close();
    }
  }
}
