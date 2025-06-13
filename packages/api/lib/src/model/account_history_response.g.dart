// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_history_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountHistoryResponse extends AccountHistoryResponse {
  @override
  final int accountId;
  @override
  final String accountName;
  @override
  final String currency;
  @override
  final String currentBalance;
  @override
  final BuiltList<AccountHistory> history;

  factory _$AccountHistoryResponse(
          [void Function(AccountHistoryResponseBuilder)? updates]) =>
      (AccountHistoryResponseBuilder()..update(updates))._build();

  _$AccountHistoryResponse._(
      {required this.accountId,
      required this.accountName,
      required this.currency,
      required this.currentBalance,
      required this.history})
      : super._();
  @override
  AccountHistoryResponse rebuild(
          void Function(AccountHistoryResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountHistoryResponseBuilder toBuilder() =>
      AccountHistoryResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountHistoryResponse &&
        accountId == other.accountId &&
        accountName == other.accountName &&
        currency == other.currency &&
        currentBalance == other.currentBalance &&
        history == other.history;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, accountName.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, currentBalance.hashCode);
    _$hash = $jc(_$hash, history.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountHistoryResponse')
          ..add('accountId', accountId)
          ..add('accountName', accountName)
          ..add('currency', currency)
          ..add('currentBalance', currentBalance)
          ..add('history', history))
        .toString();
  }
}

class AccountHistoryResponseBuilder
    implements Builder<AccountHistoryResponse, AccountHistoryResponseBuilder> {
  _$AccountHistoryResponse? _$v;

  int? _accountId;
  int? get accountId => _$this._accountId;
  set accountId(int? accountId) => _$this._accountId = accountId;

  String? _accountName;
  String? get accountName => _$this._accountName;
  set accountName(String? accountName) => _$this._accountName = accountName;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _currentBalance;
  String? get currentBalance => _$this._currentBalance;
  set currentBalance(String? currentBalance) =>
      _$this._currentBalance = currentBalance;

  ListBuilder<AccountHistory>? _history;
  ListBuilder<AccountHistory> get history =>
      _$this._history ??= ListBuilder<AccountHistory>();
  set history(ListBuilder<AccountHistory>? history) =>
      _$this._history = history;

  AccountHistoryResponseBuilder() {
    AccountHistoryResponse._defaults(this);
  }

  AccountHistoryResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _accountName = $v.accountName;
      _currency = $v.currency;
      _currentBalance = $v.currentBalance;
      _history = $v.history.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountHistoryResponse other) {
    _$v = other as _$AccountHistoryResponse;
  }

  @override
  void update(void Function(AccountHistoryResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountHistoryResponse build() => _build();

  _$AccountHistoryResponse _build() {
    _$AccountHistoryResponse _$result;
    try {
      _$result = _$v ??
          _$AccountHistoryResponse._(
            accountId: BuiltValueNullFieldError.checkNotNull(
                accountId, r'AccountHistoryResponse', 'accountId'),
            accountName: BuiltValueNullFieldError.checkNotNull(
                accountName, r'AccountHistoryResponse', 'accountName'),
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, r'AccountHistoryResponse', 'currency'),
            currentBalance: BuiltValueNullFieldError.checkNotNull(
                currentBalance, r'AccountHistoryResponse', 'currentBalance'),
            history: history.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AccountHistoryResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
