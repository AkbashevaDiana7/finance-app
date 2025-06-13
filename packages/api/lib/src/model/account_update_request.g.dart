// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountUpdateRequest extends AccountUpdateRequest {
  @override
  final String name;
  @override
  final String balance;
  @override
  final String currency;

  factory _$AccountUpdateRequest(
          [void Function(AccountUpdateRequestBuilder)? updates]) =>
      (AccountUpdateRequestBuilder()..update(updates))._build();

  _$AccountUpdateRequest._(
      {required this.name, required this.balance, required this.currency})
      : super._();
  @override
  AccountUpdateRequest rebuild(
          void Function(AccountUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountUpdateRequestBuilder toBuilder() =>
      AccountUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountUpdateRequest &&
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
    return (newBuiltValueToStringHelper(r'AccountUpdateRequest')
          ..add('name', name)
          ..add('balance', balance)
          ..add('currency', currency))
        .toString();
  }
}

class AccountUpdateRequestBuilder
    implements Builder<AccountUpdateRequest, AccountUpdateRequestBuilder> {
  _$AccountUpdateRequest? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _balance;
  String? get balance => _$this._balance;
  set balance(String? balance) => _$this._balance = balance;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  AccountUpdateRequestBuilder() {
    AccountUpdateRequest._defaults(this);
  }

  AccountUpdateRequestBuilder get _$this {
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
  void replace(AccountUpdateRequest other) {
    _$v = other as _$AccountUpdateRequest;
  }

  @override
  void update(void Function(AccountUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountUpdateRequest build() => _build();

  _$AccountUpdateRequest _build() {
    final _$result = _$v ??
        _$AccountUpdateRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'AccountUpdateRequest', 'name'),
          balance: BuiltValueNullFieldError.checkNotNull(
              balance, r'AccountUpdateRequest', 'balance'),
          currency: BuiltValueNullFieldError.checkNotNull(
              currency, r'AccountUpdateRequest', 'currency'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
