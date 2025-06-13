import 'package:test/test.dart';
import 'package:api/api.dart';

/// tests for DefaultFinance
void main() {
  final instance = Api().getDefaultFinance();

  group(DefaultFinance, () {
    // Получить все счета пользователя
    //
    // Возвращает список всех счетов текущего пользователя
    //
    //Future<BuiltList<Account>> accountsGet() async
    test('test accountsGet', () async {
      // TODO
    });

    // Получить счет по ID
    //
    // Возвращает информацию о конкретном счете, включая статистику
    //
    //Future<AccountResponse> accountsIdGet(int id) async
    test('test accountsIdGet', () async {
      // TODO
    });

    // Получить историю изменений счета
    //
    // Возвращает историю изменений баланса и других параметров счета, произведенных вне транзакций (при создании или изменении счета)
    //
    //Future<AccountHistoryResponse> accountsIdHistoryGet(int id) async
    test('test accountsIdHistoryGet', () async {
      // TODO
    });

    // Обновить счет
    //
    // Обновляет данные существующего счета
    //
    //Future<Account> accountsIdPut(int id, AccountUpdateRequest accountUpdateRequest) async
    test('test accountsIdPut', () async {
      // TODO
    });

    // Создать новый счет
    //
    // Создает новый счет для текущего пользователя
    //
    //Future<Account> accountsPost(AccountCreateRequest accountCreateRequest) async
    test('test accountsPost', () async {
      // TODO
    });

    // Получить все категории
    //
    // Возвращает список всех категорий (доходов и расходов)
    //
    //Future<BuiltList<Category>> categoriesGet() async
    test('test categoriesGet', () async {
      // TODO
    });

    // Получить категории по типу
    //
    // Возвращает список категорий доходов или расходов
    //
    //Future<BuiltList<Category>> categoriesTypeIsIncomeGet(bool isIncome) async
    test('test categoriesTypeIsIncomeGet', () async {
      // TODO
    });

    // Получить транзакции по счету за период
    //
    // Возвращает список транзакций для указанного счета за указанный период
    //
    //Future<BuiltList<TransactionResponse>> transactionsAccountAccountIdPeriodGet(int accountId, { Date startDate, Date endDate }) async
    test('test transactionsAccountAccountIdPeriodGet', () async {
      // TODO
    });

    // Удалить транзакцию
    //
    // Удаляет транзакцию с возможностью возврата средств на счет
    //
    //Future transactionsIdDelete(int id) async
    test('test transactionsIdDelete', () async {
      // TODO
    });

    // Получить транзакцию по ID
    //
    // Возвращает детальную информацию о транзакции
    //
    //Future<TransactionResponse> transactionsIdGet(int id) async
    test('test transactionsIdGet', () async {
      // TODO
    });

    // Обновить транзакцию
    //
    // Обновляет существующую транзакцию
    //
    //Future<TransactionResponse> transactionsIdPut(int id, TransactionRequest transactionRequest) async
    test('test transactionsIdPut', () async {
      // TODO
    });

    // Создать новую транзакцию
    //
    // Создает новую транзакцию (доход или расход)
    //
    //Future<Transaction> transactionsPost(TransactionRequest transactionRequest) async
    test('test transactionsPost', () async {
      // TODO
    });
  });
}
