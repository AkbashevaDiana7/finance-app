// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionRequest extends TransactionRequest {
  @override
  final int accountId;
  @override
  final int categoryId;
  @override
  final String amount;
  @override
  final DateTime transactionDate;
  @override
  final String? comment;

  factory _$TransactionRequest(
          [void Function(TransactionRequestBuilder)? updates]) =>
      (TransactionRequestBuilder()..update(updates))._build();

  _$TransactionRequest._(
      {required this.accountId,
      required this.categoryId,
      required this.amount,
      required this.transactionDate,
      this.comment})
      : super._();
  @override
  TransactionRequest rebuild(
          void Function(TransactionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionRequestBuilder toBuilder() =>
      TransactionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionRequest &&
        accountId == other.accountId &&
        categoryId == other.categoryId &&
        amount == other.amount &&
        transactionDate == other.transactionDate &&
        comment == other.comment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, transactionDate.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionRequest')
          ..add('accountId', accountId)
          ..add('categoryId', categoryId)
          ..add('amount', amount)
          ..add('transactionDate', transactionDate)
          ..add('comment', comment))
        .toString();
  }
}

class TransactionRequestBuilder
    implements Builder<TransactionRequest, TransactionRequestBuilder> {
  _$TransactionRequest? _$v;

  int? _accountId;
  int? get accountId => _$this._accountId;
  set accountId(int? accountId) => _$this._accountId = accountId;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  DateTime? _transactionDate;
  DateTime? get transactionDate => _$this._transactionDate;
  set transactionDate(DateTime? transactionDate) =>
      _$this._transactionDate = transactionDate;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  TransactionRequestBuilder() {
    TransactionRequest._defaults(this);
  }

  TransactionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _categoryId = $v.categoryId;
      _amount = $v.amount;
      _transactionDate = $v.transactionDate;
      _comment = $v.comment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionRequest other) {
    _$v = other as _$TransactionRequest;
  }

  @override
  void update(void Function(TransactionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionRequest build() => _build();

  _$TransactionRequest _build() {
    final _$result = _$v ??
        _$TransactionRequest._(
          accountId: BuiltValueNullFieldError.checkNotNull(
              accountId, r'TransactionRequest', 'accountId'),
          categoryId: BuiltValueNullFieldError.checkNotNull(
              categoryId, r'TransactionRequest', 'categoryId'),
          amount: BuiltValueNullFieldError.checkNotNull(
              amount, r'TransactionRequest', 'amount'),
          transactionDate: BuiltValueNullFieldError.checkNotNull(
              transactionDate, r'TransactionRequest', 'transactionDate'),
          comment: comment,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
