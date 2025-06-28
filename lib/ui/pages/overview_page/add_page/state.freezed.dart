// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AddPageState {
  Transaction get transaction => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddPageStateCopyWith<AddPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPageStateCopyWith<$Res> {
  factory $AddPageStateCopyWith(
    AddPageState value,
    $Res Function(AddPageState) then,
  ) = _$AddPageStateCopyWithImpl<$Res, AddPageState>;
  @useResult
  $Res call({Transaction transaction, Account account, Category category});

  $TransactionCopyWith<$Res> get transaction;
  $AccountCopyWith<$Res> get account;
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$AddPageStateCopyWithImpl<$Res, $Val extends AddPageState>
    implements $AddPageStateCopyWith<$Res> {
  _$AddPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = null,
    Object? category = null,
  }) {
    return _then(
      _value.copyWith(
            transaction:
                null == transaction
                    ? _value.transaction
                    : transaction // ignore: cast_nullable_to_non_nullable
                        as Transaction,
            account:
                null == account
                    ? _value.account
                    : account // ignore: cast_nullable_to_non_nullable
                        as Account,
            category:
                null == category
                    ? _value.category
                    : category // ignore: cast_nullable_to_non_nullable
                        as Category,
          )
          as $Val,
    );
  }

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddPageStateImplCopyWith<$Res>
    implements $AddPageStateCopyWith<$Res> {
  factory _$$AddPageStateImplCopyWith(
    _$AddPageStateImpl value,
    $Res Function(_$AddPageStateImpl) then,
  ) = __$$AddPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction, Account account, Category category});

  @override
  $TransactionCopyWith<$Res> get transaction;
  @override
  $AccountCopyWith<$Res> get account;
  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$AddPageStateImplCopyWithImpl<$Res>
    extends _$AddPageStateCopyWithImpl<$Res, _$AddPageStateImpl>
    implements _$$AddPageStateImplCopyWith<$Res> {
  __$$AddPageStateImplCopyWithImpl(
    _$AddPageStateImpl _value,
    $Res Function(_$AddPageStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
    Object? account = null,
    Object? category = null,
  }) {
    return _then(
      _$AddPageStateImpl(
        transaction:
            null == transaction
                ? _value.transaction
                : transaction // ignore: cast_nullable_to_non_nullable
                    as Transaction,
        account:
            null == account
                ? _value.account
                : account // ignore: cast_nullable_to_non_nullable
                    as Account,
        category:
            null == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                    as Category,
      ),
    );
  }
}

/// @nodoc

class _$AddPageStateImpl implements _AddPageState {
  const _$AddPageStateImpl({
    required this.transaction,
    required this.account,
    required this.category,
  });

  @override
  final Transaction transaction;
  @override
  final Account account;
  @override
  final Category category;

  @override
  String toString() {
    return 'AddPageState(transaction: $transaction, account: $account, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPageStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction, account, category);

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPageStateImplCopyWith<_$AddPageStateImpl> get copyWith =>
      __$$AddPageStateImplCopyWithImpl<_$AddPageStateImpl>(this, _$identity);
}

abstract class _AddPageState implements AddPageState {
  const factory _AddPageState({
    required final Transaction transaction,
    required final Account account,
    required final Category category,
  }) = _$AddPageStateImpl;

  @override
  Transaction get transaction;
  @override
  Account get account;
  @override
  Category get category;

  /// Create a copy of AddPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddPageStateImplCopyWith<_$AddPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
