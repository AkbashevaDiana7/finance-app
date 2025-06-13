// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Transaction {
  int get id => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;
  DateTime get transactionDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
    Transaction value,
    $Res Function(Transaction) then,
  ) = _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call({
    int id,
    int accountId,
    int categoryId,
    Money amount,
    DateTime transactionDate,
    String? comment,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            accountId:
                null == accountId
                    ? _value.accountId
                    : accountId // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as Money,
            transactionDate:
                null == transactionDate
                    ? _value.transactionDate
                    : transactionDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
    _$TransactionImpl value,
    $Res Function(_$TransactionImpl) then,
  ) = __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int accountId,
    int categoryId,
    Money amount,
    DateTime transactionDate,
    String? comment,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
    _$TransactionImpl _value,
    $Res Function(_$TransactionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? categoryId = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TransactionImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        accountId:
            null == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as Money,
        transactionDate:
            null == transactionDate
                ? _value.transactionDate
                : transactionDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl({
    required this.id,
    required this.accountId,
    required this.categoryId,
    required this.amount,
    required this.transactionDate,
    this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final int id;
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
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Transaction(id: $id, accountId: $accountId, categoryId: $categoryId, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    accountId,
    categoryId,
    amount,
    transactionDate,
    comment,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);
}

abstract class _Transaction implements Transaction {
  const factory _Transaction({
    required final int id,
    required final int accountId,
    required final int categoryId,
    required final Money amount,
    required final DateTime transactionDate,
    final String? comment,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$TransactionImpl;

  @override
  int get id;
  @override
  int get accountId;
  @override
  int get categoryId;
  @override
  Money get amount;
  @override
  DateTime get transactionDate;
  @override
  String? get comment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionWithDetails {
  int get id => throw _privateConstructorUsedError;
  Account get account => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;
  DateTime get transactionDate => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionWithDetailsCopyWith<TransactionWithDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionWithDetailsCopyWith<$Res> {
  factory $TransactionWithDetailsCopyWith(
    TransactionWithDetails value,
    $Res Function(TransactionWithDetails) then,
  ) = _$TransactionWithDetailsCopyWithImpl<$Res, TransactionWithDetails>;
  @useResult
  $Res call({
    int id,
    Account account,
    Category category,
    Money amount,
    DateTime transactionDate,
    String? comment,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $AccountCopyWith<$Res> get account;
  $CategoryCopyWith<$Res> get category;
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$TransactionWithDetailsCopyWithImpl<
  $Res,
  $Val extends TransactionWithDetails
>
    implements $TransactionWithDetailsCopyWith<$Res> {
  _$TransactionWithDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? account = null,
    Object? category = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
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
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as Money,
            transactionDate:
                null == transactionDate
                    ? _value.transactionDate
                    : transactionDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            comment:
                freezed == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionWithDetailsImplCopyWith<$Res>
    implements $TransactionWithDetailsCopyWith<$Res> {
  factory _$$TransactionWithDetailsImplCopyWith(
    _$TransactionWithDetailsImpl value,
    $Res Function(_$TransactionWithDetailsImpl) then,
  ) = __$$TransactionWithDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    Account account,
    Category category,
    Money amount,
    DateTime transactionDate,
    String? comment,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$TransactionWithDetailsImplCopyWithImpl<$Res>
    extends
        _$TransactionWithDetailsCopyWithImpl<$Res, _$TransactionWithDetailsImpl>
    implements _$$TransactionWithDetailsImplCopyWith<$Res> {
  __$$TransactionWithDetailsImplCopyWithImpl(
    _$TransactionWithDetailsImpl _value,
    $Res Function(_$TransactionWithDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? account = null,
    Object? category = null,
    Object? amount = null,
    Object? transactionDate = null,
    Object? comment = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$TransactionWithDetailsImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
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
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as Money,
        transactionDate:
            null == transactionDate
                ? _value.transactionDate
                : transactionDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        comment:
            freezed == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$TransactionWithDetailsImpl implements _TransactionWithDetails {
  const _$TransactionWithDetailsImpl({
    required this.id,
    required this.account,
    required this.category,
    required this.amount,
    required this.transactionDate,
    this.comment,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final int id;
  @override
  final Account account;
  @override
  final Category category;
  @override
  final Money amount;
  @override
  final DateTime transactionDate;
  @override
  final String? comment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'TransactionWithDetails(id: $id, account: $account, category: $category, amount: $amount, transactionDate: $transactionDate, comment: $comment, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionWithDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.transactionDate, transactionDate) ||
                other.transactionDate == transactionDate) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    account,
    category,
    amount,
    transactionDate,
    comment,
    createdAt,
    updatedAt,
  );

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionWithDetailsImplCopyWith<_$TransactionWithDetailsImpl>
  get copyWith =>
      __$$TransactionWithDetailsImplCopyWithImpl<_$TransactionWithDetailsImpl>(
        this,
        _$identity,
      );
}

abstract class _TransactionWithDetails implements TransactionWithDetails {
  const factory _TransactionWithDetails({
    required final int id,
    required final Account account,
    required final Category category,
    required final Money amount,
    required final DateTime transactionDate,
    final String? comment,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$TransactionWithDetailsImpl;

  @override
  int get id;
  @override
  Account get account;
  @override
  Category get category;
  @override
  Money get amount;
  @override
  DateTime get transactionDate;
  @override
  String? get comment;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of TransactionWithDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionWithDetailsImplCopyWith<_$TransactionWithDetailsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TransactionFilter {
  int? get accountId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  DateTime? get startDate => throw _privateConstructorUsedError;
  DateTime? get endDate => throw _privateConstructorUsedError;
  bool? get isIncome => throw _privateConstructorUsedError;
  Money? get minAmount => throw _privateConstructorUsedError;
  Money? get maxAmount => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionFilterCopyWith<TransactionFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFilterCopyWith<$Res> {
  factory $TransactionFilterCopyWith(
    TransactionFilter value,
    $Res Function(TransactionFilter) then,
  ) = _$TransactionFilterCopyWithImpl<$Res, TransactionFilter>;
  @useResult
  $Res call({
    int? accountId,
    int? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    bool? isIncome,
    Money? minAmount,
    Money? maxAmount,
    String? searchText,
  });

  $MoneyCopyWith<$Res>? get minAmount;
  $MoneyCopyWith<$Res>? get maxAmount;
}

/// @nodoc
class _$TransactionFilterCopyWithImpl<$Res, $Val extends TransactionFilter>
    implements $TransactionFilterCopyWith<$Res> {
  _$TransactionFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isIncome = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? searchText = freezed,
  }) {
    return _then(
      _value.copyWith(
            accountId:
                freezed == accountId
                    ? _value.accountId
                    : accountId // ignore: cast_nullable_to_non_nullable
                        as int?,
            categoryId:
                freezed == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int?,
            startDate:
                freezed == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            endDate:
                freezed == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            isIncome:
                freezed == isIncome
                    ? _value.isIncome
                    : isIncome // ignore: cast_nullable_to_non_nullable
                        as bool?,
            minAmount:
                freezed == minAmount
                    ? _value.minAmount
                    : minAmount // ignore: cast_nullable_to_non_nullable
                        as Money?,
            maxAmount:
                freezed == maxAmount
                    ? _value.maxAmount
                    : maxAmount // ignore: cast_nullable_to_non_nullable
                        as Money?,
            searchText:
                freezed == searchText
                    ? _value.searchText
                    : searchText // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get minAmount {
    if (_value.minAmount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.minAmount!, (value) {
      return _then(_value.copyWith(minAmount: value) as $Val);
    });
  }

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res>? get maxAmount {
    if (_value.maxAmount == null) {
      return null;
    }

    return $MoneyCopyWith<$Res>(_value.maxAmount!, (value) {
      return _then(_value.copyWith(maxAmount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionFilterImplCopyWith<$Res>
    implements $TransactionFilterCopyWith<$Res> {
  factory _$$TransactionFilterImplCopyWith(
    _$TransactionFilterImpl value,
    $Res Function(_$TransactionFilterImpl) then,
  ) = __$$TransactionFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? accountId,
    int? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    bool? isIncome,
    Money? minAmount,
    Money? maxAmount,
    String? searchText,
  });

  @override
  $MoneyCopyWith<$Res>? get minAmount;
  @override
  $MoneyCopyWith<$Res>? get maxAmount;
}

/// @nodoc
class __$$TransactionFilterImplCopyWithImpl<$Res>
    extends _$TransactionFilterCopyWithImpl<$Res, _$TransactionFilterImpl>
    implements _$$TransactionFilterImplCopyWith<$Res> {
  __$$TransactionFilterImplCopyWithImpl(
    _$TransactionFilterImpl _value,
    $Res Function(_$TransactionFilterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountId = freezed,
    Object? categoryId = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? isIncome = freezed,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? searchText = freezed,
  }) {
    return _then(
      _$TransactionFilterImpl(
        accountId:
            freezed == accountId
                ? _value.accountId
                : accountId // ignore: cast_nullable_to_non_nullable
                    as int?,
        categoryId:
            freezed == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int?,
        startDate:
            freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        endDate:
            freezed == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        isIncome:
            freezed == isIncome
                ? _value.isIncome
                : isIncome // ignore: cast_nullable_to_non_nullable
                    as bool?,
        minAmount:
            freezed == minAmount
                ? _value.minAmount
                : minAmount // ignore: cast_nullable_to_non_nullable
                    as Money?,
        maxAmount:
            freezed == maxAmount
                ? _value.maxAmount
                : maxAmount // ignore: cast_nullable_to_non_nullable
                    as Money?,
        searchText:
            freezed == searchText
                ? _value.searchText
                : searchText // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$TransactionFilterImpl implements _TransactionFilter {
  const _$TransactionFilterImpl({
    this.accountId,
    this.categoryId,
    this.startDate,
    this.endDate,
    this.isIncome,
    this.minAmount,
    this.maxAmount,
    this.searchText,
  });

  @override
  final int? accountId;
  @override
  final int? categoryId;
  @override
  final DateTime? startDate;
  @override
  final DateTime? endDate;
  @override
  final bool? isIncome;
  @override
  final Money? minAmount;
  @override
  final Money? maxAmount;
  @override
  final String? searchText;

  @override
  String toString() {
    return 'TransactionFilter(accountId: $accountId, categoryId: $categoryId, startDate: $startDate, endDate: $endDate, isIncome: $isIncome, minAmount: $minAmount, maxAmount: $maxAmount, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFilterImpl &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    accountId,
    categoryId,
    startDate,
    endDate,
    isIncome,
    minAmount,
    maxAmount,
    searchText,
  );

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFilterImplCopyWith<_$TransactionFilterImpl> get copyWith =>
      __$$TransactionFilterImplCopyWithImpl<_$TransactionFilterImpl>(
        this,
        _$identity,
      );
}

abstract class _TransactionFilter implements TransactionFilter {
  const factory _TransactionFilter({
    final int? accountId,
    final int? categoryId,
    final DateTime? startDate,
    final DateTime? endDate,
    final bool? isIncome,
    final Money? minAmount,
    final Money? maxAmount,
    final String? searchText,
  }) = _$TransactionFilterImpl;

  @override
  int? get accountId;
  @override
  int? get categoryId;
  @override
  DateTime? get startDate;
  @override
  DateTime? get endDate;
  @override
  bool? get isIncome;
  @override
  Money? get minAmount;
  @override
  Money? get maxAmount;
  @override
  String? get searchText;

  /// Create a copy of TransactionFilter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFilterImplCopyWith<_$TransactionFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;

  /// Serializes this Period to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = null, Object? endDate = null}) {
    return _then(
      _value.copyWith(
            startDate:
                null == startDate
                    ? _value.startDate
                    : startDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            endDate:
                null == endDate
                    ? _value.endDate
                    : endDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PeriodImplCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$PeriodImplCopyWith(
    _$PeriodImpl value,
    $Res Function(_$PeriodImpl) then,
  ) = __$$PeriodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDate, DateTime endDate});
}

/// @nodoc
class __$$PeriodImplCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$PeriodImpl>
    implements _$$PeriodImplCopyWith<$Res> {
  __$$PeriodImplCopyWithImpl(
    _$PeriodImpl _value,
    $Res Function(_$PeriodImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? startDate = null, Object? endDate = null}) {
    return _then(
      _$PeriodImpl(
        startDate:
            null == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        endDate:
            null == endDate
                ? _value.endDate
                : endDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PeriodImpl extends _Period {
  const _$PeriodImpl({required this.startDate, required this.endDate})
    : super._();

  factory _$PeriodImpl.fromJson(Map<String, dynamic> json) =>
      _$$PeriodImplFromJson(json);

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;

  @override
  String toString() {
    return 'Period(startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodImpl &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDate, endDate);

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      __$$PeriodImplCopyWithImpl<_$PeriodImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PeriodImplToJson(this);
  }
}

abstract class _Period extends Period {
  const factory _Period({
    required final DateTime startDate,
    required final DateTime endDate,
  }) = _$PeriodImpl;
  const _Period._() : super._();

  factory _Period.fromJson(Map<String, dynamic> json) = _$PeriodImpl.fromJson;

  @override
  DateTime get startDate;
  @override
  DateTime get endDate;

  /// Create a copy of Period
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PeriodImplCopyWith<_$PeriodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
