// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_create_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountCreateRequest extends AccountCreateRequest {
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  factory _$AccountCreateRequest(
          [void Function(AccountCreateRequestBuilder)? updates]) =>
      (AccountCreateRequestBuilder()..update(updates))._build();

  _$AccountCreateRequest._(
      {required this.name, required this.balance, required this.currency})
      : super._();
  @override
  AccountCreateRequest rebuild(
          void Function(AccountCreateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountCreateRequestBuilder toBuilder() =>
      AccountCreateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountCreateRequest &&
        name == other.name &&
        balance == other.balance &&
        currency == other.currency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, balance.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountCreateRequest')
          ..add('name', name)
          ..add('balance', balance)
          ..add('currency', currency))
        .toString();
  }
}

class AccountCreateRequestBuilder
    implements Builder<AccountCreateRequest, AccountCreateRequestBuilder> {
  _$AccountCreateRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  AccountCreateRequestBuilder() {
    AccountCreateRequest._defaults(this);
  }

  AccountCreateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _balance = $v.balance;
      _currency = $v.currency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountCreateRequest other) {
    _$v = other as _$AccountCreateRequest;
  }

  @override
  void update(void Function(AccountCreateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountCreateRequest build() => _build();

  _$AccountCreateRequest _build() {
    final _$result = _$v ??
        _$AccountCreateRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AccountCreateRequest', 'name'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'AccountCreateRequest', 'balance'),
          currency: BuiltValueNullFieldError.checkNotNull(
              currency, r'AccountCreateRequest', 'currency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
