//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:api/src/model/stat_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_response.g.dart';

/// AccountResponse
///
/// Properties:
/// * [id]
/// * [name]
/// * [balance]
/// * [currency]
/// * [incomeStats]
/// * [expenseStats]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AccountResponse
    implements Built<AccountResponse, AccountResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'balance')
  String get balance;

  @BuiltValueField(wireName: r'currency')
  String get currency;

  @BuiltValueField(wireName: r'incomeStats')
  BuiltList<StatItem> get incomeStats;

  @BuiltValueField(wireName: r'expenseStats')
  BuiltList<StatItem> get expenseStats;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  AccountResponse._();

  factory AccountResponse([void updates(AccountResponseBuilder b)]) =
      _$AccountResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountResponse> get serializer =>
      _$AccountResponseSerializer();
}

class _$AccountResponseSerializer
    implements PrimitiveSerializer<AccountResponse> {
  @override
  final Iterable<Type> types = const [AccountResponse, _$AccountResponse];

  @override
  final String wireName = r'AccountResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'balance';
    yield serializers.serialize(
      object.balance,
      specifiedType: const FullType(String),
    );
    yield r'currency';
    yield serializers.serialize(
      object.currency,
      specifiedType: const FullType(String),
    );
    yield r'incomeStats';
    yield serializers.serialize(
      object.incomeStats,
      specifiedType: const FullType(BuiltList, [FullType(StatItem)]),
    );
    yield r'expenseStats';
    yield serializers.serialize(
      object.expenseStats,
      specifiedType: const FullType(BuiltList, [FullType(StatItem)]),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountResponse object, {
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
    required AccountResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.id = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'balance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.balance = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'incomeStats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StatItem)]),
          ) as BuiltList<StatItem>;
          result.incomeStats.replace(valueDes);
          break;
        case r'expenseStats':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(StatItem)]),
          ) as BuiltList<StatItem>;
          result.expenseStats.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountResponseBuilder();
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
