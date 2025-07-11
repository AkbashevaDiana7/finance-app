// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionEvent _$TransactionEventFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'created':
      return TransactionCreated.fromJson(json);
    case 'updated':
      return TransactionUpdated.fromJson(json);
    case 'deleted':
      return TransactionDeleted.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TransactionEvent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TransactionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)
        created,
    required TResult Function(int id, int? accountId, int? categoryId,
            Money? amount, DateTime? transactionDate, String? comment)
        updated,
    required TResult Function(int id) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult? Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult? Function(int id)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult Function(int id)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCreated value) created,
    required TResult Function(TransactionUpdated value) updated,
    required TResult Function(TransactionDeleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCreated value)? created,
    TResult? Function(TransactionUpdated value)? updated,
    TResult? Function(TransactionDeleted value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCreated value)? created,
    TResult Function(TransactionUpdated value)? updated,
    TResult Function(TransactionDeleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TransactionEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEventCopyWith<$Res> {
  factory $TransactionEventCopyWith(
          TransactionEvent value, $Res Function(TransactionEvent) then) =
      _$TransactionEventCopyWithImpl<$Res, TransactionEvent>;
}

/// @nodoc
class _$TransactionEventCopyWithImpl<$Res, $Val extends TransactionEvent>
    implements $TransactionEventCopyWith<$Res> {
  _$TransactionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionCreatedImplCopyWith<$Res> {
  factory _$$TransactionCreatedImplCopyWith(_$TransactionCreatedImpl value,
          $Res Function(_$TransactionCreatedImpl) then) =
      __$$TransactionCreatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int accountId,
      int categoryId,
      Money amount,
      DateTime transactionDate,
      String? comment});

  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$TransactionCreatedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionCreatedImpl>
    implements _$$TransactionCreatedImplCopyWith<$Res> {
  __$$TransactionCreatedImplCopyWithImpl(_$TransactionCreatedImpl _value,
      $Res Function(_$TransactionCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
  }) {
    return _then(_$TransactionCreatedImpl(
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money,
      transactionDate: null == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionCreatedImpl implements TransactionCreated {
  const _$TransactionCreatedImpl(
      {required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      this.comment,
      final String? $type})
      : $type = $type ?? 'created';

  factory _$TransactionCreatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionCreatedImplFromJson(json);

  @override
  final int accountId;
  @override
  final int categoryId;
  @override
  final Money amount;
  @override
  final DateTime transactionDate;
  @override
  final String? comment;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransactionEvent.created(accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionCreatedImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, accountId, categoryId, amount, transactionDate, comment);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionCreatedImplCopyWith<_$TransactionCreatedImpl> get copyWith =>
      __$$TransactionCreatedImplCopyWithImpl<_$TransactionCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)
        created,
    required TResult Function(int id, int? accountId, int? categoryId,
            Money? amount, DateTime? transactionDate, String? comment)
        updated,
    required TResult Function(int id) deleted,
  }) {
    return created(accountId, categoryId, amount, transactionDate, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult? Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult? Function(int id)? deleted,
  }) {
    return created?.call(
        accountId, categoryId, amount, transactionDate, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult Function(int id)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(accountId, categoryId, amount, transactionDate, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCreated value) created,
    required TResult Function(TransactionUpdated value) updated,
    required TResult Function(TransactionDeleted value) deleted,
  }) {
    return created(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCreated value)? created,
    TResult? Function(TransactionUpdated value)? updated,
    TResult? Function(TransactionDeleted value)? deleted,
  }) {
    return created?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCreated value)? created,
    TResult Function(TransactionUpdated value)? updated,
    TResult Function(TransactionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (created != null) {
      return created(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionCreatedImplToJson(
      this,
    );
  }
}

abstract class TransactionCreated implements TransactionEvent {
  const factory TransactionCreated(
      {required final int accountId,
      required final int categoryId,
      required final Money amount,
      required final DateTime transactionDate,
      final String? comment}) = _$TransactionCreatedImpl;

  factory TransactionCreated.fromJson(Map<String, dynamic> json) =
      _$TransactionCreatedImpl.fromJson;

  int get accountId;
  int get categoryId;
  Money get amount;
  DateTime get transactionDate;
  String? get comment;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionCreatedImplCopyWith<_$TransactionCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionUpdatedImplCopyWith<$Res> {
  factory _$$TransactionUpdatedImplCopyWith(_$TransactionUpdatedImpl value,
          $Res Function(_$TransactionUpdatedImpl) then) =
      __$$TransactionUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      int? accountId,
      int? categoryId,
      Money? amount,
      DateTime? transactionDate,
      String? comment});

  $MoneyCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$TransactionUpdatedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionUpdatedImpl>
    implements _$$TransactionUpdatedImplCopyWith<$Res> {
  __$$TransactionUpdatedImplCopyWithImpl(_$TransactionUpdatedImpl _value,
      $Res Function(_$TransactionUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? amount = freezed,
    Object? transactionDate = freezed,
    Object? comment = freezed,
  }) {
    return _then(_$TransactionUpdatedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      accountId: freezed == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as Money?,
      transactionDate: freezed == transactionDate
          ? _value.transactionDate
          : transactionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionUpdatedImpl implements TransactionUpdated {
  const _$TransactionUpdatedImpl(
      {required this.id,
      this.accountId,
      this.categoryId,
      this.amount,
      this.transactionDate,
      this.comment,
      final String? $type})
      : $type = $type ?? 'updated';

  factory _$TransactionUpdatedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionUpdatedImplFromJson(json);

  @override
  final int id;
  @override
  final int? accountId;
  @override
  final int? categoryId;
  @override
  final Money? amount;
  @override
  final DateTime? transactionDate;
  @override
  final String? comment;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransactionEvent.updated(id: $id, accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionUpdatedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, accountId, categoryId, amount, transactionDate, comment);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionUpdatedImplCopyWith<_$TransactionUpdatedImpl> get copyWith =>
      __$$TransactionUpdatedImplCopyWithImpl<_$TransactionUpdatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)
        created,
    required TResult Function(int id, int? accountId, int? categoryId,
            Money? amount, DateTime? transactionDate, String? comment)
        updated,
    required TResult Function(int id) deleted,
  }) {
    return updated(id, accountId, categoryId, amount, transactionDate, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult? Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult? Function(int id)? deleted,
  }) {
    return updated?.call(
        id, accountId, categoryId, amount, transactionDate, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult Function(int id)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(
          id, accountId, categoryId, amount, transactionDate, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCreated value) created,
    required TResult Function(TransactionUpdated value) updated,
    required TResult Function(TransactionDeleted value) deleted,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCreated value)? created,
    TResult? Function(TransactionUpdated value)? updated,
    TResult? Function(TransactionDeleted value)? deleted,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCreated value)? created,
    TResult Function(TransactionUpdated value)? updated,
    TResult Function(TransactionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionUpdatedImplToJson(
      this,
    );
  }
}

abstract class TransactionUpdated implements TransactionEvent {
  const factory TransactionUpdated(
      {required final int id,
      final int? accountId,
      final int? categoryId,
      final Money? amount,
      final DateTime? transactionDate,
      final String? comment}) = _$TransactionUpdatedImpl;

  factory TransactionUpdated.fromJson(Map<String, dynamic> json) =
      _$TransactionUpdatedImpl.fromJson;

  int get id;
  int? get accountId;
  int? get categoryId;
  Money? get amount;
  DateTime? get transactionDate;
  String? get comment;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionUpdatedImplCopyWith<_$TransactionUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionDeletedImplCopyWith<$Res> {
  factory _$$TransactionDeletedImplCopyWith(_$TransactionDeletedImpl value,
          $Res Function(_$TransactionDeletedImpl) then) =
      __$$TransactionDeletedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TransactionDeletedImplCopyWithImpl<$Res>
    extends _$TransactionEventCopyWithImpl<$Res, _$TransactionDeletedImpl>
    implements _$$TransactionDeletedImplCopyWith<$Res> {
  __$$TransactionDeletedImplCopyWithImpl(_$TransactionDeletedImpl _value,
      $Res Function(_$TransactionDeletedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TransactionDeletedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionDeletedImpl implements TransactionDeleted {
  const _$TransactionDeletedImpl(this.id, {final String? $type})
      : $type = $type ?? 'deleted';

  factory _$TransactionDeletedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDeletedImplFromJson(json);

  @override
  final int id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TransactionEvent.deleted(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDeletedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDeletedImplCopyWith<_$TransactionDeletedImpl> get copyWith =>
      __$$TransactionDeletedImplCopyWithImpl<_$TransactionDeletedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)
        created,
    required TResult Function(int id, int? accountId, int? categoryId,
            Money? amount, DateTime? transactionDate, String? comment)
        updated,
    required TResult Function(int id) deleted,
  }) {
    return deleted(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult? Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult? Function(int id)? deleted,
  }) {
    return deleted?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int accountId, int categoryId, Money amount,
            DateTime transactionDate, String? comment)?
        created,
    TResult Function(int id, int? accountId, int? categoryId, Money? amount,
            DateTime? transactionDate, String? comment)?
        updated,
    TResult Function(int id)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionCreated value) created,
    required TResult Function(TransactionUpdated value) updated,
    required TResult Function(TransactionDeleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionCreated value)? created,
    TResult? Function(TransactionUpdated value)? updated,
    TResult? Function(TransactionDeleted value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionCreated value)? created,
    TResult Function(TransactionUpdated value)? updated,
    TResult Function(TransactionDeleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDeletedImplToJson(
      this,
    );
  }
}

abstract class TransactionDeleted implements TransactionEvent {
  const factory TransactionDeleted(final int id) = _$TransactionDeletedImpl;

  factory TransactionDeleted.fromJson(Map<String, dynamic> json) =
      _$TransactionDeletedImpl.fromJson;

  int get id;

  /// Create a copy of TransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDeletedImplCopyWith<_$TransactionDeletedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
