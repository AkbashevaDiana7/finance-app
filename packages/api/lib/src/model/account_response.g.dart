// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountResponse extends AccountResponse {
  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;
  @override
  final BuiltList<StatItem> incomeStats;
  @override
  final BuiltList<StatItem> expenseStats;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$AccountResponse([void Function(AccountResponseBuilder)? updates]) =>
      (AccountResponseBuilder()..update(updates))._build();

  _$AccountResponse._(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency,
      required this.incomeStats,
      required this.expenseStats,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  AccountResponse rebuild(void Function(AccountResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountResponseBuilder toBuilder() => AccountResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountResponse &&
        id == other.id &&
        name == other.name &&
        balance == other.balance &&
        currency == other.currency &&
        incomeStats == other.incomeStats &&
        expenseStats == other.expenseStats &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, incomeStats.hashCode);
    _$hash = $jc(_$hash, expenseStats.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('balance', balance)
          ..add('currency', currency)
          ..add('incomeStats', incomeStats)
          ..add('expenseStats', expenseStats)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AccountResponseBuilder
    implements Builder<AccountResponse, AccountResponseBuilder> {
  _$AccountResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  ListBuilder<StatItem>? _incomeStats;
  ListBuilder<StatItem> get incomeStats =>
      _$this._incomeStats ??= ListBuilder<StatItem>();
  set incomeStats(ListBuilder<StatItem>? incomeStats) =>
      _$this._incomeStats = incomeStats;

  ListBuilder<StatItem>? _expenseStats;
  ListBuilder<StatItem> get expenseStats =>
      _$this._expenseStats ??= ListBuilder<StatItem>();
  set expenseStats(ListBuilder<StatItem>? expenseStats) =>
      _$this._expenseStats = expenseStats;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  AccountResponseBuilder() {
    AccountResponse._defaults(this);
  }

  AccountResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _balance = $v.balance;
      _currency = $v.currency;
      _incomeStats = $v.incomeStats.toBuilder();
      _expenseStats = $v.expenseStats.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountResponse other) {
    _$v = other as _$AccountResponse;
  }

  @override
  void update(void Function(AccountResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountResponse build() => _build();

  _$AccountResponse _build() {
    _$AccountResponse _$result;
    try {
      _$result = _$v ??
          _$AccountResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'AccountResponse', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'AccountResponse', 'name'),
            balance: BuiltValueNullFieldError.checkNotNull(
                balance, r'AccountResponse', 'balance'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'AccountResponse', 'currency'),
            incomeStats: incomeStats.build(),
            expenseStats: expenseStats.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'AccountResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'AccountResponse', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'incomeStats';
        incomeStats.build();
        _$failedField = 'expenseStats';
        expenseStats.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AccountResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
