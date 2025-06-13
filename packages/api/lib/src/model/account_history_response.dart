//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api/src/model/account_history.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_history_response.g.dart';

/// AccountHistoryResponse
///
/// Properties:
/// * [accountId]
/// * [accountName]
/// * [currency]
/// * [currentBalance]
/// * [history]
@BuiltValue()
abstract class AccountHistoryResponse
    implements Built<AccountHistoryResponse, AccountHistoryResponseBuilder> {
  @BuiltValueField(wireName: r'accountId')
  int get accountId;

  @BuiltValueField(wireName: r'accountName')
  String get accountName;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'currentBalance')
  String get currentBalance;

  @BuiltValueField(wireName: r'history')
  BuiltList<AccountHistory> get history;

  AccountHistoryResponse._();

  factory AccountHistoryResponse(
          [void updates(AccountHistoryResponseBuilder b)]) =
      _$AccountHistoryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountHistoryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountHistoryResponse> get serializer =>
      _$AccountHistoryResponseSerializer();
}

class _$AccountHistoryResponseSerializer
    implements PrimitiveSerializer<AccountHistoryResponse> {
  @override
  final Iterable<Type> types = const [
    AccountHistoryResponse,
    _$AccountHistoryResponse
  ];

  @override
  final String wireName = r'AccountHistoryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(int),
    );
    yield r'accountName';
    yield serializers.serialize(
      object.accountName,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'currentBalance';
    yield serializers.serialize(
      object.currentBalance,
      specifiedType: const FullType(String),
    );
    yield r'history';
    yield serializers.serialize(
      object.history,
      specifiedType: const FullType(BuiltList, [FullType(AccountHistory)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountHistoryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AccountHistoryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountId = valueDes;
          break;
        case r'accountName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountName = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'currentBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currentBalance = valueDes;
          break;
        case r'history':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(AccountHistory)]),
          ) as BuiltList<AccountHistory>;
          result.history.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountHistoryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountHistoryResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
