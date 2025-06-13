// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AccountHistoryChangeTypeEnum _$accountHistoryChangeTypeEnum_CREATION =
    const AccountHistoryChangeTypeEnum._('CREATION');
const AccountHistoryChangeTypeEnum _$accountHistoryChangeTypeEnum_MODIFICATION =
    const AccountHistoryChangeTypeEnum._('MODIFICATION');

AccountHistoryChangeTypeEnum _$accountHistoryChangeTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'CREATION':
      return _$accountHistoryChangeTypeEnum_CREATION;
    case 'MODIFICATION':
      return _$accountHistoryChangeTypeEnum_MODIFICATION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AccountHistoryChangeTypeEnum>
    _$accountHistoryChangeTypeEnumValues =
    BuiltSet<AccountHistoryChangeTypeEnum>(const <AccountHistoryChangeTypeEnum>[
  _$accountHistoryChangeTypeEnum_CREATION,
  _$accountHistoryChangeTypeEnum_MODIFICATION,
]);

Serializer<AccountHistoryChangeTypeEnum>
    _$accountHistoryChangeTypeEnumSerializer =
    _$AccountHistoryChangeTypeEnumSerializer();

class _$AccountHistoryChangeTypeEnumSerializer
    implements PrimitiveSerializer<AccountHistoryChangeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CREATION': 'CREATION',
    'MODIFICATION': 'MODIFICATION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CREATION': 'CREATION',
    'MODIFICATION': 'MODIFICATION',
  };

  @override
  final Iterable<Type> types = const <Type>[AccountHistoryChangeTypeEnum];
  @override
  final String wireName = 'AccountHistoryChangeTypeEnum';

  @override
  Object serialize(Serializers serializers, AccountHistoryChangeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AccountHistoryChangeTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AccountHistoryChangeTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AccountHistory extends AccountHistory {
  @override
  final int id;
  @override
  final int accountId;
  @override
  final AccountHistoryChangeTypeEnum changeType;
  @override
  final AccountState? previousState;
  @override
  final AccountState newState;
  @override
  final DateTime changeTimestamp;
  @override
  final DateTime createdAt;

  factory _$AccountHistory([void Function(AccountHistoryBuilder)? updates]) =>
      (AccountHistoryBuilder()..update(updates))._build();

  _$AccountHistory._(
      {required this.id,
      required this.accountId,
      required this.changeType,
      this.previousState,
      required this.newState,
      required this.changeTimestamp,
      required this.createdAt})
      : super._();
  @override
  AccountHistory rebuild(void Function(AccountHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountHistoryBuilder toBuilder() => AccountHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountHistory &&
        id == other.id &&
        accountId == other.accountId &&
        changeType == other.changeType &&
        previousState == other.previousState &&
        newState == other.newState &&
        changeTimestamp == other.changeTimestamp &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, changeType.hashCode);
    _$hash = $jc(_$hash, previousState.hashCode);
    _$hash = $jc(_$hash, newState.hashCode);
    _$hash = $jc(_$hash, changeTimestamp.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountHistory')
          ..add('id', id)
          ..add('accountId', accountId)
          ..add('changeType', changeType)
          ..add('previousState', previousState)
          ..add('newState', newState)
          ..add('changeTimestamp', changeTimestamp)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class AccountHistoryBuilder
    implements Builder<AccountHistory, AccountHistoryBuilder> {
  _$AccountHistory? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _accountId;
  int? get accountId => _$this._accountId;
  set accountId(int? accountId) => _$this._accountId = accountId;

  AccountHistoryChangeTypeEnum? _changeType;
  AccountHistoryChangeTypeEnum? get changeType => _$this._changeType;
  set changeType(AccountHistoryChangeTypeEnum? changeType) =>
      _$this._changeType = changeType;

  AccountStateBuilder? _previousState;
  AccountStateBuilder get previousState =>
      _$this._previousState ??= AccountStateBuilder();
  set previousState(AccountStateBuilder? previousState) =>
      _$this._previousState = previousState;

  AccountStateBuilder? _newState;
  AccountStateBuilder get newState =>
      _$this._newState ??= AccountStateBuilder();
  set newState(AccountStateBuilder? newState) => _$this._newState = newState;

  DateTime? _changeTimestamp;
  DateTime? get changeTimestamp => _$this._changeTimestamp;
  set changeTimestamp(DateTime? changeTimestamp) =>
      _$this._changeTimestamp = changeTimestamp;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  AccountHistoryBuilder() {
    AccountHistory._defaults(this);
  }

  AccountHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _accountId = $v.accountId;
      _changeType = $v.changeType;
      _previousState = $v.previousState?.toBuilder();
      _newState = $v.newState.toBuilder();
      _changeTimestamp = $v.changeTimestamp;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountHistory other) {
    _$v = other as _$AccountHistory;
  }

  @override
  void update(void Function(AccountHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountHistory build() => _build();

  _$AccountHistory _build() {
    _$AccountHistory _$result;
    try {
      _$result = _$v ??
          _$AccountHistory._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AccountHistory', 'id'),
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'AccountHistory', 'accountId'),
            changeType: BuiltValueNullFieldError.checkNotNull(
                changeType, r'AccountHistory', 'changeType'),
            previousState: _previousState?.build(),
            newState: newState.build(),
            changeTimestamp: BuiltValueNullFieldError.checkNotNull(
                changeTimestamp, r'AccountHistory', 'changeTimestamp'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AccountHistory', 'createdAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'previousState';
        _previousState?.build();
        _$failedField = 'newState';
        newState.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AccountHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
