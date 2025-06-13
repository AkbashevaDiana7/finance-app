//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:api/src/date_serializer.dart';
import 'package:api/src/model/date.dart';

import 'package:api/src/model/account.dart';
import 'package:api/src/model/account_brief.dart';
import 'package:api/src/model/account_create_request.dart';
import 'package:api/src/model/account_history.dart';
import 'package:api/src/model/account_history_response.dart';
import 'package:api/src/model/account_response.dart';
import 'package:api/src/model/account_state.dart';
import 'package:api/src/model/account_update_request.dart';
import 'package:api/src/model/category.dart';
import 'package:api/src/model/stat_item.dart';
import 'package:api/src/model/transaction.dart';
import 'package:api/src/model/transaction_request.dart';
import 'package:api/src/model/transaction_response.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AccountBrief,
  AccountCreateRequest,
  AccountHistory,
  AccountHistoryResponse,
  AccountResponse,
  AccountState,
  AccountUpdateRequest,
  Category,
  StatItem,
  Transaction,
  TransactionRequest,
  TransactionResponse,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(TransactionResponse)]),
        () => ListBuilder<TransactionResponse>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Category)]),
        () => ListBuilder<Category>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Account)]),
        () => ListBuilder<Account>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
