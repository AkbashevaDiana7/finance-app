import 'package:api/api.dart' as api;
import 'package:models/models.dart' as domain;
import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:repositories/repositories.dart';

/// Мноооожесто мапперов domain <-> API модели
// TODO: мог где-то пропустить параметры, перепроверить как-нибудь
class ApiMappers {
  static domain.Category categoryFromApi(api.Category apiCategory) {
    return domain.Category(
      id: apiCategory.id,
      name: apiCategory.name,
      emoji: apiCategory.emoji,
      isIncome: apiCategory.isIncome,
    );
  }

  static List<domain.Category> categoriesFromApi(
    BuiltList<api.Category> apiCategories,
  ) {
    return apiCategories
        .map((apiCategory) => categoryFromApi(apiCategory))
        .toList();
  }

  static domain.Account accountFromApi(api.Account apiAccount) {
    return domain.Account(
      id: apiAccount.id,
      userId: apiAccount.userId,
      name: apiAccount.name,
      balance: domain.Money.fromString(apiAccount.balance, apiAccount.currency),
      createdAt: apiAccount.createdAt,
      updatedAt: apiAccount.updatedAt,
    );
  }

  static List<domain.Account> accountsFromApi(
    BuiltList<api.Account> apiAccounts,
  ) {
    return apiAccounts.map((apiAccount) => accountFromApi(apiAccount)).toList();
  }

  static domain.Transaction transactionFromApi(api.Transaction apiTransaction) {
    return domain.Transaction(
      id: apiTransaction.id,
      accountId: apiTransaction.accountId,
      categoryId: apiTransaction.categoryId,
      amount: domain.Money.fromString(apiTransaction.amount, 'RUB'),
      transactionDate: apiTransaction.transactionDate,
      comment: apiTransaction.comment,
      createdAt: apiTransaction.createdAt,
      updatedAt: apiTransaction.updatedAt,
    );
  }

  static List<domain.Transaction> transactionsFromApi(
    BuiltList<api.Transaction> apiTransactions,
  ) =>
      apiTransactions
          .map((apiTransaction) => transactionFromApi(apiTransaction))
          .toList();

  static String moneyToApiAmount(domain.Money money) => money.amount;

  static String moneyToApiCurrency(domain.Money money) => money.currency.code;

  static api.TransactionRequestBuilder createTransactionRequestBuilder({
    required int accountId,
    required int categoryId,
    required domain.Money amount,
    required DateTime transactionDate,
    String? comment,
  }) =>
      api.TransactionRequestBuilder()
        ..accountId = accountId
        ..categoryId = categoryId
        ..amount = moneyToApiAmount(amount)
        ..transactionDate = transactionDate
        ..comment = comment;

  static api.AccountUpdateRequestBuilder createAccountUpdateRequestBuilder({
    required String name,
    required domain.Money balance,
  }) =>
      api.AccountUpdateRequestBuilder()
        ..name = name
        ..balance = moneyToApiAmount(balance)
        ..currency = moneyToApiCurrency(balance);

  /// Дефолтный хендлер ошибок Dio для remote-репозиториев
  static RepositoryException handleDioException(
    DioException e, {
    String notFoundMessage = 'Не найдено',
    String validationMessage = 'Некорректные данные',
    String serverMessage = 'Ошибка сервера',
    String networkMessage = 'Ошибка сети',
  }) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return NetworkException('$networkMessage: ${e.message}');
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return NotFoundException(notFoundMessage);
        } else if (statusCode == 400) {
          return ValidationException(validationMessage);
        } else if (statusCode != null && statusCode >= 500) {
          return ServerException('$serverMessage: $statusCode');
        }
        return ServerException('HTTP ошибка: $statusCode');
      default:
        return NetworkException('Неизвестная ошибка: ${e.message}');
    }
  }
}
