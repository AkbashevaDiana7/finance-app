import 'package:api/api.dart' as api;
import 'package:models/models.dart';
import 'package:repositories/repositories.dart';
import 'package:dio/dio.dart';
import 'api_mappers.dart';

/// Remote реализация TransactionRepository
class RemoteTransactionRepository implements TransactionRepository {
  final api.DefaultFinance _api;

  const RemoteTransactionRepository(this._api);

  @override
  Future<Transaction?> getTransactionById(int id) async {
    try {
      final response = await _api.transactionsIdGet(id: id);
      if (response.data != null) {
        final transactionResponse = response.data!;
        return Transaction(
          id: transactionResponse.id,
          accountId: transactionResponse.account.id,
          categoryId: transactionResponse.category.id,
          amount: Money.fromString(
            transactionResponse.amount,
            transactionResponse.account.currency,
          ),
          transactionDate: transactionResponse.transactionDate,
          comment: transactionResponse.comment,
          createdAt: transactionResponse.createdAt,
          updatedAt: transactionResponse.updatedAt,
        );
      }
      return null;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        return null;
      }
      throw _handleDioException(e);
    }
  }

  @override
  Future<List<Transaction>> getAllTransactions() async {
    try {
      final accountsResponse = await _api.accountsGet();
      if (accountsResponse.data == null) {
        return [];
      }

      final List<Transaction> allTransactions = [];

      for (final account in accountsResponse.data!) {
        final transactionsResponse = await _api
            .transactionsAccountAccountIdPeriodGet(accountId: account.id);

        if (transactionsResponse.data != null) {
          for (final transactionResponse in transactionsResponse.data!) {
            allTransactions.add(
              Transaction(
                id: transactionResponse.id,
                accountId: transactionResponse.account.id,
                categoryId: transactionResponse.category.id,
                amount: Money.fromString(
                  transactionResponse.amount,
                  transactionResponse.account.currency,
                ),
                transactionDate: transactionResponse.transactionDate,
                comment: transactionResponse.comment,
                createdAt: transactionResponse.createdAt,
                updatedAt: transactionResponse.updatedAt,
              ),
            );
          }
        }
      }

      return allTransactions;
    } on DioException catch (e) {
      throw _handleDioException(e);
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
    try {
      final request =
          ApiMappers.createTransactionRequestBuilder(
            accountId: accountId,
            categoryId: categoryId,
            amount: amount,
            transactionDate: transactionDate,
            comment: comment,
          ).build();

      final response = await _api.transactionsPost(transactionRequest: request);
      if (response.data != null) {
        return ApiMappers.transactionFromApi(response.data!);
      }

      throw const ServerException('Ответ сервера не содержит данных');
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
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
    try {
      final currentTransaction = await getTransactionById(id);
      if (currentTransaction == null) {
        throw NotFoundException('Транзакция с ID $id не найдена');
      }

      final request =
          ApiMappers.createTransactionRequestBuilder(
            accountId: accountId ?? currentTransaction.accountId,
            categoryId: categoryId ?? currentTransaction.categoryId,
            amount: amount ?? currentTransaction.amount,
            transactionDate:
                transactionDate ?? currentTransaction.transactionDate,
            comment: comment ?? currentTransaction.comment,
          ).build();

      final response = await _api.transactionsIdPut(
        id: id,
        transactionRequest: request,
      );
      if (response.data != null) {
        final transactionResponse = response.data!;
        return Transaction(
          id: transactionResponse.id,
          accountId: transactionResponse.account.id,
          categoryId: transactionResponse.category.id,
          amount: Money.fromString(
            transactionResponse.amount,
            transactionResponse.account.currency,
          ),
          transactionDate: transactionResponse.transactionDate,
          comment: transactionResponse.comment,
          createdAt: transactionResponse.createdAt,
          updatedAt: transactionResponse.updatedAt,
        );
      }

      throw const ServerException('Ответ сервера не содержит данных');
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<void> deleteTransaction(int id) async {
    try {
      await _api.transactionsIdDelete(id: id);
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  static RepositoryException _handleDioException(DioException e) =>
      ApiMappers.handleDioException(
        e,
        notFoundMessage: 'Транзакция не найдена',
        validationMessage: 'Некорректные параметры запроса',
      );
}
