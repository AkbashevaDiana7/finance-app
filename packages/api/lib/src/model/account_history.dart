//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:api/src/model/account_state.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_history.g.dart';

/// AccountHistory
///
/// Properties:
/// * [id]
/// * [accountId]
/// * [changeType]
/// * [previousState]
/// * [newState]
/// * [changeTimestamp]
/// * [createdAt]
@BuiltValue()
abstract class AccountHistory
    implements Built<AccountHistory, AccountHistoryBuilder> {
  @BuiltValueField(wireName: r'id')
  int get id;

  @BuiltValueField(wireName: r'accountId')
  int get accountId;

  @BuiltValueField(wireName: r'changeType')
  AccountHistoryChangeTypeEnum get changeType;
  // enum changeTypeEnum {  CREATION,  MODIFICATION,  };

  @BuiltValueField(wireName: r'previousState')
  AccountState? get previousState;

  @BuiltValueField(wireName: r'newState')
  AccountState get newState;

  @BuiltValueField(wireName: r'changeTimestamp')
  DateTime get changeTimestamp;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  AccountHistory._();

  factory AccountHistory([void updates(AccountHistoryBuilder b)]) =
      _$AccountHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountHistory> get serializer =>
      _$AccountHistorySerializer();
}

class _$AccountHistorySerializer
    implements PrimitiveSerializer<AccountHistory> {
  @override
  final Iterable<Type> types = const [AccountHistory, _$AccountHistory];

  @override
  final String wireName = r'AccountHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(int),
    );
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(int),
    );
    yield r'changeType';
    yield serializers.serialize(
      object.changeType,
      specifiedType: const FullType(AccountHistoryChangeTypeEnum),
    );
    if (object.previousState != null) {
      yield r'previousState';
      yield serializers.serialize(
        object.previousState,
        specifiedType: const FullType(AccountState),
      );
    }
    yield r'newState';
    yield serializers.serialize(
      object.newState,
      specifiedType: const FullType(AccountState),
    );
    yield r'changeTimestamp';
    yield serializers.serialize(
      object.changeTimestamp,
      specifiedType: const FullType(DateTime),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountHistory object, {
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
    required AccountHistoryBuilder result,
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
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.accountId = valueDes;
          break;
        case r'changeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountHistoryChangeTypeEnum),
          ) as AccountHistoryChangeTypeEnum;
          result.changeType = valueDes;
          break;
        case r'previousState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountState),
          ) as AccountState;
          result.previousState.replace(valueDes);
          break;
        case r'newState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AccountState),
          ) as AccountState;
          result.newState.replace(valueDes);
          break;
        case r'changeTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.changeTimestamp = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountHistoryBuilder();
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

class AccountHistoryChangeTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CREATION')
  static const AccountHistoryChangeTypeEnum CREATION =
      _$accountHistoryChangeTypeEnum_CREATION;
  @BuiltValueEnumConst(wireName: r'MODIFICATION')
  static const AccountHistoryChangeTypeEnum MODIFICATION =
      _$accountHistoryChangeTypeEnum_MODIFICATION;

  static Serializer<AccountHistoryChangeTypeEnum> get serializer =>
      _$accountHistoryChangeTypeEnumSerializer;

  const AccountHistoryChangeTypeEnum._(String name) : super(name);

  static BuiltSet<AccountHistoryChangeTypeEnum> get values =>
      _$accountHistoryChangeTypeEnumValues;
  static AccountHistoryChangeTypeEnum valueOf(String name) =>
      _$accountHistoryChangeTypeEnumValueOf(name);
}
