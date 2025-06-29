# api (EXPERIMENTAL)
API для мобильного приложения по отслеживанию расходов

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.13.0
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Requirements

* Dart 2.15.0+ or Flutter 2.8.0+
* Dio 5.0.0+ (https://pub.dev/packages/dio)

## Installation & Usage

### pub.dev
To use the package from [pub.dev](https://pub.dev), please include the following in pubspec.yaml
```yaml
dependencies:
  api: 1.0.0
```

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```yaml
dependencies:
  api:
    git:
      url: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      #ref: main
```

### Local development
To use the package from your local drive, please include the following in pubspec.yaml
```yaml
dependencies:
  api:
    path: /path/to/api
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:api/api.dart';


final api = Api().getDefaultFinance();

try {
    final response = await api.accountsGet();
    print(response);
} catch on DioException (e) {
    print("Exception when calling DefaultFinance->accountsGet: $e\n");
}

```

## Documentation for API Endpoints

All URIs are relative to *https://shmr-finance.ru/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
[*DefaultFinance*](doc/DefaultFinance.md) | [**accountsGet**](doc/DefaultFinance.md#accountsget) | **GET** /accounts | Получить все счета пользователя
[*DefaultFinance*](doc/DefaultFinance.md) | [**accountsIdGet**](doc/DefaultFinance.md#accountsidget) | **GET** /accounts/{id} | Получить счет по ID
[*DefaultFinance*](doc/DefaultFinance.md) | [**accountsIdHistoryGet**](doc/DefaultFinance.md#accountsidhistoryget) | **GET** /accounts/{id}/history | Получить историю изменений счета
[*DefaultFinance*](doc/DefaultFinance.md) | [**accountsIdPut**](doc/DefaultFinance.md#accountsidput) | **PUT** /accounts/{id} | Обновить счет
[*DefaultFinance*](doc/DefaultFinance.md) | [**accountsPost**](doc/DefaultFinance.md#accountspost) | **POST** /accounts | Создать новый счет
[*DefaultFinance*](doc/DefaultFinance.md) | [**categoriesGet**](doc/DefaultFinance.md#categoriesget) | **GET** /categories | Получить все категории
[*DefaultFinance*](doc/DefaultFinance.md) | [**categoriesTypeIsIncomeGet**](doc/DefaultFinance.md#categoriestypeisincomeget) | **GET** /categories/type/{isIncome} | Получить категории по типу
[*DefaultFinance*](doc/DefaultFinance.md) | [**transactionsAccountAccountIdPeriodGet**](doc/DefaultFinance.md#transactionsaccountaccountidperiodget) | **GET** /transactions/account/{accountId}/period | Получить транзакции по счету за период
[*DefaultFinance*](doc/DefaultFinance.md) | [**transactionsIdDelete**](doc/DefaultFinance.md#transactionsiddelete) | **DELETE** /transactions/{id} | Удалить транзакцию
[*DefaultFinance*](doc/DefaultFinance.md) | [**transactionsIdGet**](doc/DefaultFinance.md#transactionsidget) | **GET** /transactions/{id} | Получить транзакцию по ID
[*DefaultFinance*](doc/DefaultFinance.md) | [**transactionsIdPut**](doc/DefaultFinance.md#transactionsidput) | **PUT** /transactions/{id} | Обновить транзакцию
[*DefaultFinance*](doc/DefaultFinance.md) | [**transactionsPost**](doc/DefaultFinance.md#transactionspost) | **POST** /transactions | Создать новую транзакцию


## Documentation For Models

 - [Account](doc/Account.md)
 - [AccountBrief](doc/AccountBrief.md)
 - [AccountCreateRequest](doc/AccountCreateRequest.md)
 - [AccountHistory](doc/AccountHistory.md)
 - [AccountHistoryResponse](doc/AccountHistoryResponse.md)
 - [AccountResponse](doc/AccountResponse.md)
 - [AccountState](doc/AccountState.md)
 - [AccountUpdateRequest](doc/AccountUpdateRequest.md)
 - [Category](doc/Category.md)
 - [StatItem](doc/StatItem.md)
 - [Transaction](doc/Transaction.md)
 - [TransactionRequest](doc/TransactionRequest.md)
 - [TransactionResponse](doc/TransactionResponse.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: HTTP Bearer Token authentication (JWT)


## Author

avasilov@example.com

