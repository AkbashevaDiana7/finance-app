import 'package:api/api.dart' as api;
import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:dio/dio.dart';
import 'api_mappers.dart';

/// Remote реализация AccountRepository
class RemoteAccountRepository implements AccountRepository {
  final api.DefaultFinance _api;

  const RemoteAccountRepository(this._api);

  @override
  Future<List<Account>> getAllAccounts() async {
    try {
      final response = await _api.accountsGet();
      if (response.data != null) {
        return ApiMappers.accountsFromApi(response.data!);
      }
      return [];
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<Account?> getAccountById(int id) async {
    try {
      final response = await _api.accountsIdGet(id: id);
      if (response.data != null) {
        // AccountResponse содержит дополнительную информацию,
        // нам нужно извлечь основные данные счета
        final accountResponse = response.data!;
        return Account(
          id: accountResponse.id,
          userId:
              1, // Временно задаем userId, так как в AccountResponse его нет
          name: accountResponse.name,
          balance: Money.fromString(
            accountResponse.balance,
            accountResponse.currency,
          ),
          createdAt: accountResponse.createdAt,
          updatedAt: accountResponse.updatedAt,
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
  Future<Account> updateAccount({
    required int id,
    String? name,
    Money? balance,
  }) async {
    try {
      // Сначала получаем текущий счет
      final currentAccount = await getAccountById(id);
      if (currentAccount == null) {
        throw NotFoundException('Счет с ID $id не найден');
      }

      // Создаем запрос на обновление
      final updateRequest =
          ApiMappers.createAccountUpdateRequestBuilder(
            name: name ?? currentAccount.name,
            balance: balance ?? currentAccount.balance,
          ).build();

      final response = await _api.accountsIdPut(
        id: id,
        accountUpdateRequest: updateRequest,
      );
      if (response.data != null) {
        return ApiMappers.accountFromApi(response.data!);
      }

      throw const ServerException('Ответ сервера не содержит данных');
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  static RepositoryException _handleDioException(DioException e) =>
      throw ApiMappers.handleDioException(
        e,
        notFoundMessage: 'Счет не найден',
        validationMessage: 'Некорректные данные счета',
      );

  @override
  Future<Account> createAccount({
    required String name,
    required Money initialBalance,
  }) => throw UnimplementedError();

  @override
  Future<AccountSummary?> getAccountSummary(int id) =>
      throw UnimplementedError();
}
