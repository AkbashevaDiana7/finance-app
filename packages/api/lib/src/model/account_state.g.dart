// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountState extends AccountState {
  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  factory _$AccountState([void Function(AccountStateBuilder)? updates]) =>
      (AccountStateBuilder()..update(updates))._build();

  _$AccountState._(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency})
      : super._();
  @override
  AccountState rebuild(void Function(AccountStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStateBuilder toBuilder() => AccountStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountState &&
        id == other.id &&
        name == other.name &&
        balance == other.balance &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountState')
          ..add('id', id)
          ..add('name', name)
          ..add('balance', balance)
          ..add('currency', currency))
        .toString();
  }
}

class AccountStateBuilder
    implements Builder<AccountState, AccountStateBuilder> {
  _$AccountState? _$v;

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

  AccountStateBuilder() {
    AccountState._defaults(this);
  }

  AccountStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _balance = $v.balance;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountState other) {
    _$v = other as _$AccountState;
  }

  @override
  void update(void Function(AccountStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountState build() => _build();

  _$AccountState _build() {
    final _$result = _$v ??
        _$AccountState._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AccountState', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AccountState', 'name'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'AccountState', 'balance'),
          currency: BuiltValueNullFieldError.checkNotNull(
              currency, r'AccountState', 'currency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
