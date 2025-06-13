// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_brief.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountBrief extends AccountBrief {
  @override
  final int id;
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  factory _$AccountBrief([void Function(AccountBriefBuilder)? updates]) =>
      (AccountBriefBuilder()..update(updates))._build();

  _$AccountBrief._(
      {required this.id,
      required this.name,
      required this.balance,
      required this.currency})
      : super._();
  @override
  AccountBrief rebuild(void Function(AccountBriefBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBriefBuilder toBuilder() => AccountBriefBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountBrief &&
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
    return (newBuiltValueToStringHelper(r'AccountBrief')
          ..add('id', id)
          ..add('name', name)
          ..add('balance', balance)
          ..add('currency', currency))
        .toString();
  }
}

class AccountBriefBuilder
    implements Builder<AccountBrief, AccountBriefBuilder> {
  _$AccountBrief? _$v;

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

  AccountBriefBuilder() {
    AccountBrief._defaults(this);
  }

  AccountBriefBuilder get _$this {
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
  void replace(AccountBrief other) {
    _$v = other as _$AccountBrief;
  }

  @override
  void update(void Function(AccountBriefBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountBrief build() => _build();

  _$AccountBrief _build() {
    final _$result = _$v ??
        _$AccountBrief._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'AccountBrief', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AccountBrief', 'name'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'AccountBrief', 'balance'),
          currency: BuiltValueNullFieldError.checkNotNull(
              currency, r'AccountBrief', 'currency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
