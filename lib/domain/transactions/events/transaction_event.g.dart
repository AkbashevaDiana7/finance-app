// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionCreatedImpl _$$TransactionCreatedImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionCreatedImpl(
      accountId: (json['accountId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      amount: Money.fromJson(json['amount'] as Map<String, dynamic>),
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      comment: json['comment'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionCreatedImplToJson(
        _$TransactionCreatedImpl instance) =>
    <String, dynamic>{
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'comment': instance.comment,
      'runtimeType': instance.$type,
    };

_$TransactionUpdatedImpl _$$TransactionUpdatedImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionUpdatedImpl(
      id: (json['id'] as num).toInt(),
      accountId: (json['accountId'] as num?)?.toInt(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      amount: json['amount'] == null
          ? null
          : Money.fromJson(json['amount'] as Map<String, dynamic>),
      transactionDate: json['transactionDate'] == null
          ? null
          : DateTime.parse(json['transactionDate'] as String),
      comment: json['comment'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionUpdatedImplToJson(
        _$TransactionUpdatedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accountId': instance.accountId,
      'categoryId': instance.categoryId,
      'amount': instance.amount,
      'transactionDate': instance.transactionDate?.toIso8601String(),
      'comment': instance.comment,
      'runtimeType': instance.$type,
    };

_$TransactionDeletedImpl _$$TransactionDeletedImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDeletedImpl(
      (json['id'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionDeletedImplToJson(
        _$TransactionDeletedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'runtimeType': instance.$type,
    };
