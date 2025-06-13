# api.api.DefaultFinance

## Load the API package
```dart
import 'package:api/api.dart';
```

All URIs are relative to *https://shmr-finance.ru/api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsGet**](DefaultFinance.md#accountsget) | **GET** /accounts | Получить все счета пользователя
[**accountsIdGet**](DefaultFinance.md#accountsidget) | **GET** /accounts/{id} | Получить счет по ID
[**accountsIdHistoryGet**](DefaultFinance.md#accountsidhistoryget) | **GET** /accounts/{id}/history | Получить историю изменений счета
[**accountsIdPut**](DefaultFinance.md#accountsidput) | **PUT** /accounts/{id} | Обновить счет
[**accountsPost**](DefaultFinance.md#accountspost) | **POST** /accounts | Создать новый счет
[**categoriesGet**](DefaultFinance.md#categoriesget) | **GET** /categories | Получить все категории
[**categoriesTypeIsIncomeGet**](DefaultFinance.md#categoriestypeisincomeget) | **GET** /categories/type/{isIncome} | Получить категории по типу
[**transactionsAccountAccountIdPeriodGet**](DefaultFinance.md#transactionsaccountaccountidperiodget) | **GET** /transactions/account/{accountId}/period | Получить транзакции по счету за период
[**transactionsIdDelete**](DefaultFinance.md#transactionsiddelete) | **DELETE** /transactions/{id} | Удалить транзакцию
[**transactionsIdGet**](DefaultFinance.md#transactionsidget) | **GET** /transactions/{id} | Получить транзакцию по ID
[**transactionsIdPut**](DefaultFinance.md#transactionsidput) | **PUT** /transactions/{id} | Обновить транзакцию
[**transactionsPost**](DefaultFinance.md#transactionspost) | **POST** /transactions | Создать новую транзакцию


# **accountsGet**
> BuiltList<Account> accountsGet()

Получить все счета пользователя

Возвращает список всех счетов текущего пользователя

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();

try {
    final response = api.accountsGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->accountsGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Account&gt;**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsIdGet**
> AccountResponse accountsIdGet(id)

Получить счет по ID

Возвращает информацию о конкретном счете, включая статистику

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID счета

try {
    final response = api.accountsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->accountsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID счета | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsIdHistoryGet**
> AccountHistoryResponse accountsIdHistoryGet(id)

Получить историю изменений счета

Возвращает историю изменений баланса и других параметров счета, произведенных вне транзакций (при создании или изменении счета)

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID счета

try {
    final response = api.accountsIdHistoryGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->accountsIdHistoryGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID счета | 

### Return type

[**AccountHistoryResponse**](AccountHistoryResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsIdPut**
> Account accountsIdPut(id, accountUpdateRequest)

Обновить счет

Обновляет данные существующего счета

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID счета
final AccountUpdateRequest accountUpdateRequest = ; // AccountUpdateRequest | 

try {
    final response = api.accountsIdPut(id, accountUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->accountsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID счета | 
 **accountUpdateRequest** | [**AccountUpdateRequest**](AccountUpdateRequest.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsPost**
> Account accountsPost(accountCreateRequest)

Создать новый счет

Создает новый счет для текущего пользователя

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final AccountCreateRequest accountCreateRequest = ; // AccountCreateRequest | 

try {
    final response = api.accountsPost(accountCreateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->accountsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountCreateRequest** | [**AccountCreateRequest**](AccountCreateRequest.md)|  | 

### Return type

[**Account**](Account.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesGet**
> BuiltList<Category> categoriesGet()

Получить все категории

Возвращает список всех категорий (доходов и расходов)

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();

try {
    final response = api.categoriesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->categoriesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList&lt;Category&gt;**](Category.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **categoriesTypeIsIncomeGet**
> BuiltList<Category> categoriesTypeIsIncomeGet(isIncome)

Получить категории по типу

Возвращает список категорий доходов или расходов

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final bool isIncome = true; // bool | Тип категорий: true - доходы, false - расходы

try {
    final response = api.categoriesTypeIsIncomeGet(isIncome);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->categoriesTypeIsIncomeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **isIncome** | **bool**| Тип категорий: true - доходы, false - расходы | 

### Return type

[**BuiltList&lt;Category&gt;**](Category.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsAccountAccountIdPeriodGet**
> BuiltList<TransactionResponse> transactionsAccountAccountIdPeriodGet(accountId, startDate, endDate)

Получить транзакции по счету за период

Возвращает список транзакций для указанного счета за указанный период

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int accountId = 56; // int | ID счета
final Date startDate = 2013-10-20; // Date | Начальная дата периода (YYYY-MM-DD). Если не указана, используется начало текущего месяца.
final Date endDate = 2013-10-20; // Date | Конечная дата периода (YYYY-MM-DD). Если не указана, используется конец текущего месяца.

try {
    final response = api.transactionsAccountAccountIdPeriodGet(accountId, startDate, endDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->transactionsAccountAccountIdPeriodGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **int**| ID счета | 
 **startDate** | **Date**| Начальная дата периода (YYYY-MM-DD). Если не указана, используется начало текущего месяца. | [optional] 
 **endDate** | **Date**| Конечная дата периода (YYYY-MM-DD). Если не указана, используется конец текущего месяца. | [optional] 

### Return type

[**BuiltList&lt;TransactionResponse&gt;**](TransactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsIdDelete**
> transactionsIdDelete(id)

Удалить транзакцию

Удаляет транзакцию с возможностью возврата средств на счет

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID транзакции

try {
    api.transactionsIdDelete(id);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->transactionsIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID транзакции | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsIdGet**
> TransactionResponse transactionsIdGet(id)

Получить транзакцию по ID

Возвращает детальную информацию о транзакции

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID транзакции

try {
    final response = api.transactionsIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->transactionsIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID транзакции | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsIdPut**
> TransactionResponse transactionsIdPut(id, transactionRequest)

Обновить транзакцию

Обновляет существующую транзакцию

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final int id = 56; // int | ID транзакции
final TransactionRequest transactionRequest = ; // TransactionRequest | 

try {
    final response = api.transactionsIdPut(id, transactionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->transactionsIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ID транзакции | 
 **transactionRequest** | [**TransactionRequest**](TransactionRequest.md)|  | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transactionsPost**
> Transaction transactionsPost(transactionRequest)

Создать новую транзакцию

Создает новую транзакцию (доход или расход)

### Example
```dart
import 'package:api/api.dart';

final api = Api().getDefaultFinance();
final TransactionRequest transactionRequest = ; // TransactionRequest | 

try {
    final response = api.transactionsPost(transactionRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling DefaultFinance->transactionsPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **transactionRequest** | [**TransactionRequest**](TransactionRequest.md)|  | 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

