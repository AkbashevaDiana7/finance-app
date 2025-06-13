//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_request.g.dart';

/// TransactionRequest
///
/// Properties:
/// * [accountId]
/// * [categoryId]
/// * [amount]
/// * [transactionDate]
/// * [comment]
@BuiltValue()
abstract class TransactionRequest
    implements Built<TransactionRequest, TransactionRequestBuilder> {
  @BuiltValueField(wireName: r'accountId')
  int get accountId;

  @BuiltValueField(wireName: r'categoryId')
  int get categoryId;

  @BuiltValueField(wireName: r'amount')
  String get amount;

  @BuiltValueField(wireName: r'transactionDate')
  DateTime get transactionDate;

  @BuiltValueField(wireName: r'comment')
  String? get comment;

  TransactionRequest._();

  factory TransactionRequest([void updates(TransactionRequestBuilder b)]) =
      _$TransactionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TransactionRequest> get serializer =>
      _$TransactionRequestSerializer();
}

class _$TransactionRequestSerializer
    implements PrimitiveSerializer<TransactionRequest> {
  @override
  final Iterable<Type> types = const [TransactionRequest, _$TransactionRequest];

  @override
  final String wireName = r'TransactionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TransactionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'accountId';
    yield serializers.serialize(
      object.accountId,
      specifiedType: const FullType(int),
    );
    yield r'categoryId';
    yield serializers.serialize(
      object.categoryId,
      specifiedType: const FullType(int),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'transactionDate';
    yield serializers.serialize(
      object.transactionDate,
      specifiedType: const FullType(DateTime),
    );
    if (object.comment != null) {
      yield r'comment';
      yield serializers.serialize(
        object.comment,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TransactionRequest object, {
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
    required TransactionRequestBuilder result,
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
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'transactionDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.transactionDate = valueDes;
          break;
        case r'comment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.comment = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TransactionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransactionRequestBuilder();
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
