// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$Account {
  int get id => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Money get balance => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res, Account>;
  @useResult
  $Res call({
    int id,
    int userId,
    String name,
    Money balance,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $MoneyCopyWith<$Res> get balance;
}

/// @nodoc
class _$AccountCopyWithImpl<$Res, $Val extends Account>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? balance = null,
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
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as Money,
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

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get balance {
    return $MoneyCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountImplCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$$AccountImplCopyWith(
    _$AccountImpl value,
    $Res Function(_$AccountImpl) then,
  ) = __$$AccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int userId,
    String name,
    Money balance,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $MoneyCopyWith<$Res> get balance;
}

/// @nodoc
class __$$AccountImplCopyWithImpl<$Res>
    extends _$AccountCopyWithImpl<$Res, _$AccountImpl>
    implements _$$AccountImplCopyWith<$Res> {
  __$$AccountImplCopyWithImpl(
    _$AccountImpl _value,
    $Res Function(_$AccountImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? balance = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AccountImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as Money,
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

class _$AccountImpl implements _Account {
  const _$AccountImpl({
    required this.id,
    required this.userId,
    required this.name,
    required this.balance,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  final int id;
  @override
  final int userId;
  @override
  final String name;
  @override
  final Money balance;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Account(id: $id, userId: $userId, name: $name, balance: $balance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, name, balance, createdAt, updatedAt);

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      __$$AccountImplCopyWithImpl<_$AccountImpl>(this, _$identity);
}

abstract class _Account implements Account {
  const factory _Account({
    required final int id,
    required final int userId,
    required final String name,
    required final Money balance,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$AccountImpl;

  @override
  int get id;
  @override
  int get userId;
  @override
  String get name;
  @override
  Money get balance;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Account
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountImplCopyWith<_$AccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountState {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Money get balance => throw _privateConstructorUsedError;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountStateCopyWith<AccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
    AccountState value,
    $Res Function(AccountState) then,
  ) = _$AccountStateCopyWithImpl<$Res, AccountState>;
  @useResult
  $Res call({int id, String name, Money balance});

  $MoneyCopyWith<$Res> get balance;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? balance = null}) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            balance:
                null == balance
                    ? _value.balance
                    : balance // ignore: cast_nullable_to_non_nullable
                        as Money,
          )
          as $Val,
    );
  }

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get balance {
    return $MoneyCopyWith<$Res>(_value.balance, (value) {
      return _then(_value.copyWith(balance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountStateImplCopyWith<$Res>
    implements $AccountStateCopyWith<$Res> {
  factory _$$AccountStateImplCopyWith(
    _$AccountStateImpl value,
    $Res Function(_$AccountStateImpl) then,
  ) = __$$AccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, Money balance});

  @override
  $MoneyCopyWith<$Res> get balance;
}

/// @nodoc
class __$$AccountStateImplCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateImpl>
    implements _$$AccountStateImplCopyWith<$Res> {
  __$$AccountStateImplCopyWithImpl(
    _$AccountStateImpl _value,
    $Res Function(_$AccountStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? name = null, Object? balance = null}) {
    return _then(
      _$AccountStateImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        balance:
            null == balance
                ? _value.balance
                : balance // ignore: cast_nullable_to_non_nullable
                    as Money,
      ),
    );
  }
}

/// @nodoc

class _$AccountStateImpl implements _AccountState {
  const _$AccountStateImpl({
    required this.id,
    required this.name,
    required this.balance,
  });

  @override
  final int id;
  @override
  final String name;
  @override
  final Money balance;

  @override
  String toString() {
    return 'AccountState(id: $id, name: $name, balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, balance);

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      __$$AccountStateImplCopyWithImpl<_$AccountStateImpl>(this, _$identity);
}

abstract class _AccountState implements AccountState {
  const factory _AccountState({
    required final int id,
    required final String name,
    required final Money balance,
  }) = _$AccountStateImpl;

  @override
  int get id;
  @override
  String get name;
  @override
  Money get balance;

  /// Create a copy of AccountState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountStateImplCopyWith<_$AccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountHistory {
  int get id => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  AccountChangeType get changeType => throw _privateConstructorUsedError;
  AccountState? get previousState => throw _privateConstructorUsedError;
  AccountState get newState => throw _privateConstructorUsedError;
  DateTime get changeTimestamp => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountHistoryCopyWith<AccountHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountHistoryCopyWith<$Res> {
  factory $AccountHistoryCopyWith(
    AccountHistory value,
    $Res Function(AccountHistory) then,
  ) = _$AccountHistoryCopyWithImpl<$Res, AccountHistory>;
  @useResult
  $Res call({
    int id,
    int accountId,
    AccountChangeType changeType,
    AccountState? previousState,
    AccountState newState,
    DateTime changeTimestamp,
    DateTime createdAt,
  });

  $AccountStateCopyWith<$Res>? get previousState;
  $AccountStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$AccountHistoryCopyWithImpl<$Res, $Val extends AccountHistory>
    implements $AccountHistoryCopyWith<$Res> {
  _$AccountHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? changeType = null,
    Object? previousState = freezed,
    Object? newState = null,
    Object? changeTimestamp = null,
    Object? createdAt = null,
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
            changeType:
                null == changeType
                    ? _value.changeType
                    : changeType // ignore: cast_nullable_to_non_nullable
                        as AccountChangeType,
            previousState:
                freezed == previousState
                    ? _value.previousState
                    : previousState // ignore: cast_nullable_to_non_nullable
                        as AccountState?,
            newState:
                null == newState
                    ? _value.newState
                    : newState // ignore: cast_nullable_to_non_nullable
                        as AccountState,
            changeTimestamp:
                null == changeTimestamp
                    ? _value.changeTimestamp
                    : changeTimestamp // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStateCopyWith<$Res>? get previousState {
    if (_value.previousState == null) {
      return null;
    }

    return $AccountStateCopyWith<$Res>(_value.previousState!, (value) {
      return _then(_value.copyWith(previousState: value) as $Val);
    });
  }

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountStateCopyWith<$Res> get newState {
    return $AccountStateCopyWith<$Res>(_value.newState, (value) {
      return _then(_value.copyWith(newState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountHistoryImplCopyWith<$Res>
    implements $AccountHistoryCopyWith<$Res> {
  factory _$$AccountHistoryImplCopyWith(
    _$AccountHistoryImpl value,
    $Res Function(_$AccountHistoryImpl) then,
  ) = __$$AccountHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int accountId,
    AccountChangeType changeType,
    AccountState? previousState,
    AccountState newState,
    DateTime changeTimestamp,
    DateTime createdAt,
  });

  @override
  $AccountStateCopyWith<$Res>? get previousState;
  @override
  $AccountStateCopyWith<$Res> get newState;
}

/// @nodoc
class __$$AccountHistoryImplCopyWithImpl<$Res>
    extends _$AccountHistoryCopyWithImpl<$Res, _$AccountHistoryImpl>
    implements _$$AccountHistoryImplCopyWith<$Res> {
  __$$AccountHistoryImplCopyWithImpl(
    _$AccountHistoryImpl _value,
    $Res Function(_$AccountHistoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? accountId = null,
    Object? changeType = null,
    Object? previousState = freezed,
    Object? newState = null,
    Object? changeTimestamp = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$AccountHistoryImpl(
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
        changeType:
            null == changeType
                ? _value.changeType
                : changeType // ignore: cast_nullable_to_non_nullable
                    as AccountChangeType,
        previousState:
            freezed == previousState
                ? _value.previousState
                : previousState // ignore: cast_nullable_to_non_nullable
                    as AccountState?,
        newState:
            null == newState
                ? _value.newState
                : newState // ignore: cast_nullable_to_non_nullable
                    as AccountState,
        changeTimestamp:
            null == changeTimestamp
                ? _value.changeTimestamp
                : changeTimestamp // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$AccountHistoryImpl implements _AccountHistory {
  const _$AccountHistoryImpl({
    required this.id,
    required this.accountId,
    required this.changeType,
    this.previousState,
    required this.newState,
    required this.changeTimestamp,
    required this.createdAt,
  });

  @override
  final int id;
  @override
  final int accountId;
  @override
  final AccountChangeType changeType;
  @override
  final AccountState? previousState;
  @override
  final AccountState newState;
  @override
  final DateTime changeTimestamp;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'AccountHistory(id: $id, accountId: $accountId, changeType: $changeType, previousState: $previousState, newState: $newState, changeTimestamp: $changeTimestamp, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountHistoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.changeType, changeType) ||
                other.changeType == changeType) &&
            (identical(other.previousState, previousState) ||
                other.previousState == previousState) &&
            (identical(other.newState, newState) ||
                other.newState == newState) &&
            (identical(other.changeTimestamp, changeTimestamp) ||
                other.changeTimestamp == changeTimestamp) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    accountId,
    changeType,
    previousState,
    newState,
    changeTimestamp,
    createdAt,
  );

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountHistoryImplCopyWith<_$AccountHistoryImpl> get copyWith =>
      __$$AccountHistoryImplCopyWithImpl<_$AccountHistoryImpl>(
        this,
        _$identity,
      );
}

abstract class _AccountHistory implements AccountHistory {
  const factory _AccountHistory({
    required final int id,
    required final int accountId,
    required final AccountChangeType changeType,
    final AccountState? previousState,
    required final AccountState newState,
    required final DateTime changeTimestamp,
    required final DateTime createdAt,
  }) = _$AccountHistoryImpl;

  @override
  int get id;
  @override
  int get accountId;
  @override
  AccountChangeType get changeType;
  @override
  AccountState? get previousState;
  @override
  AccountState get newState;
  @override
  DateTime get changeTimestamp;
  @override
  DateTime get createdAt;

  /// Create a copy of AccountHistory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountHistoryImplCopyWith<_$AccountHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccountSummary {
  Account get account => throw _privateConstructorUsedError;
  Money get totalIncome => throw _privateConstructorUsedError;
  Money get totalExpense => throw _privateConstructorUsedError;
  List<StatItem> get incomeStats => throw _privateConstructorUsedError;
  List<StatItem> get expenseStats => throw _privateConstructorUsedError;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AccountSummaryCopyWith<AccountSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountSummaryCopyWith<$Res> {
  factory $AccountSummaryCopyWith(
    AccountSummary value,
    $Res Function(AccountSummary) then,
  ) = _$AccountSummaryCopyWithImpl<$Res, AccountSummary>;
  @useResult
  $Res call({
    Account account,
    Money totalIncome,
    Money totalExpense,
    List<StatItem> incomeStats,
    List<StatItem> expenseStats,
  });

  $AccountCopyWith<$Res> get account;
  $MoneyCopyWith<$Res> get totalIncome;
  $MoneyCopyWith<$Res> get totalExpense;
}

/// @nodoc
class _$AccountSummaryCopyWithImpl<$Res, $Val extends AccountSummary>
    implements $AccountSummaryCopyWith<$Res> {
  _$AccountSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? incomeStats = null,
    Object? expenseStats = null,
  }) {
    return _then(
      _value.copyWith(
            account:
                null == account
                    ? _value.account
                    : account // ignore: cast_nullable_to_non_nullable
                        as Account,
            totalIncome:
                null == totalIncome
                    ? _value.totalIncome
                    : totalIncome // ignore: cast_nullable_to_non_nullable
                        as Money,
            totalExpense:
                null == totalExpense
                    ? _value.totalExpense
                    : totalExpense // ignore: cast_nullable_to_non_nullable
                        as Money,
            incomeStats:
                null == incomeStats
                    ? _value.incomeStats
                    : incomeStats // ignore: cast_nullable_to_non_nullable
                        as List<StatItem>,
            expenseStats:
                null == expenseStats
                    ? _value.expenseStats
                    : expenseStats // ignore: cast_nullable_to_non_nullable
                        as List<StatItem>,
          )
          as $Val,
    );
  }

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AccountCopyWith<$Res> get account {
    return $AccountCopyWith<$Res>(_value.account, (value) {
      return _then(_value.copyWith(account: value) as $Val);
    });
  }

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalIncome {
    return $MoneyCopyWith<$Res>(_value.totalIncome, (value) {
      return _then(_value.copyWith(totalIncome: value) as $Val);
    });
  }

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get totalExpense {
    return $MoneyCopyWith<$Res>(_value.totalExpense, (value) {
      return _then(_value.copyWith(totalExpense: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccountSummaryImplCopyWith<$Res>
    implements $AccountSummaryCopyWith<$Res> {
  factory _$$AccountSummaryImplCopyWith(
    _$AccountSummaryImpl value,
    $Res Function(_$AccountSummaryImpl) then,
  ) = __$$AccountSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Account account,
    Money totalIncome,
    Money totalExpense,
    List<StatItem> incomeStats,
    List<StatItem> expenseStats,
  });

  @override
  $AccountCopyWith<$Res> get account;
  @override
  $MoneyCopyWith<$Res> get totalIncome;
  @override
  $MoneyCopyWith<$Res> get totalExpense;
}

/// @nodoc
class __$$AccountSummaryImplCopyWithImpl<$Res>
    extends _$AccountSummaryCopyWithImpl<$Res, _$AccountSummaryImpl>
    implements _$$AccountSummaryImplCopyWith<$Res> {
  __$$AccountSummaryImplCopyWithImpl(
    _$AccountSummaryImpl _value,
    $Res Function(_$AccountSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? incomeStats = null,
    Object? expenseStats = null,
  }) {
    return _then(
      _$AccountSummaryImpl(
        account:
            null == account
                ? _value.account
                : account // ignore: cast_nullable_to_non_nullable
                    as Account,
        totalIncome:
            null == totalIncome
                ? _value.totalIncome
                : totalIncome // ignore: cast_nullable_to_non_nullable
                    as Money,
        totalExpense:
            null == totalExpense
                ? _value.totalExpense
                : totalExpense // ignore: cast_nullable_to_non_nullable
                    as Money,
        incomeStats:
            null == incomeStats
                ? _value._incomeStats
                : incomeStats // ignore: cast_nullable_to_non_nullable
                    as List<StatItem>,
        expenseStats:
            null == expenseStats
                ? _value._expenseStats
                : expenseStats // ignore: cast_nullable_to_non_nullable
                    as List<StatItem>,
      ),
    );
  }
}

/// @nodoc

class _$AccountSummaryImpl implements _AccountSummary {
  const _$AccountSummaryImpl({
    required this.account,
    required this.totalIncome,
    required this.totalExpense,
    required final List<StatItem> incomeStats,
    required final List<StatItem> expenseStats,
  }) : _incomeStats = incomeStats,
       _expenseStats = expenseStats;

  @override
  final Account account;
  @override
  final Money totalIncome;
  @override
  final Money totalExpense;
  final List<StatItem> _incomeStats;
  @override
  List<StatItem> get incomeStats {
    if (_incomeStats is EqualUnmodifiableListView) return _incomeStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_incomeStats);
  }

  final List<StatItem> _expenseStats;
  @override
  List<StatItem> get expenseStats {
    if (_expenseStats is EqualUnmodifiableListView) return _expenseStats;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_expenseStats);
  }

  @override
  String toString() {
    return 'AccountSummary(account: $account, totalIncome: $totalIncome, totalExpense: $totalExpense, incomeStats: $incomeStats, expenseStats: $expenseStats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountSummaryImpl &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            const DeepCollectionEquality().equals(
              other._incomeStats,
              _incomeStats,
            ) &&
            const DeepCollectionEquality().equals(
              other._expenseStats,
              _expenseStats,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    account,
    totalIncome,
    totalExpense,
    const DeepCollectionEquality().hash(_incomeStats),
    const DeepCollectionEquality().hash(_expenseStats),
  );

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountSummaryImplCopyWith<_$AccountSummaryImpl> get copyWith =>
      __$$AccountSummaryImplCopyWithImpl<_$AccountSummaryImpl>(
        this,
        _$identity,
      );
}

abstract class _AccountSummary implements AccountSummary {
  const factory _AccountSummary({
    required final Account account,
    required final Money totalIncome,
    required final Money totalExpense,
    required final List<StatItem> incomeStats,
    required final List<StatItem> expenseStats,
  }) = _$AccountSummaryImpl;

  @override
  Account get account;
  @override
  Money get totalIncome;
  @override
  Money get totalExpense;
  @override
  List<StatItem> get incomeStats;
  @override
  List<StatItem> get expenseStats;

  /// Create a copy of AccountSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AccountSummaryImplCopyWith<_$AccountSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
