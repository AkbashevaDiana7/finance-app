// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TransactionResponse extends TransactionResponse {
  @override
  final int id;
  @override
  final AccountBrief account;
  @override
  final Category category;
  @override
  final String amount;
  @override
  final DateTime transactionDate;
  @override
  final String? comment;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$TransactionResponse(
          [void Function(TransactionResponseBuilder)? updates]) =>
      (TransactionResponseBuilder()..update(updates))._build();

  _$TransactionResponse._(
      {required this.id,
      required this.account,
      required this.category,
      required this.amount,
      required this.transactionDate,
      this.comment,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  TransactionResponse rebuild(
          void Function(TransactionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionResponseBuilder toBuilder() =>
      TransactionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionResponse &&
        id == other.id &&
        account == other.account &&
        category == other.category &&
        amount == other.amount &&
        transactionDate == other.transactionDate &&
        comment == other.comment &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, transactionDate.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TransactionResponse')
          ..add('id', id)
          ..add('account', account)
          ..add('category', category)
          ..add('amount', amount)
          ..add('transactionDate', transactionDate)
          ..add('comment', comment)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TransactionResponseBuilder
    implements Builder<TransactionResponse, TransactionResponseBuilder> {
  _$TransactionResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  AccountBriefBuilder? _account;
  AccountBriefBuilder get account => _$this._account ??= AccountBriefBuilder();
  set account(AccountBriefBuilder? account) => _$this._account = account;

  CategoryBuilder? _category;
  CategoryBuilder get category => _$this._category ??= CategoryBuilder();
  set category(CategoryBuilder? category) => _$this._category = category;

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

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TransactionResponseBuilder() {
    TransactionResponse._defaults(this);
  }

  TransactionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _account = $v.account.toBuilder();
      _category = $v.category.toBuilder();
      _amount = $v.amount;
      _transactionDate = $v.transactionDate;
      _comment = $v.comment;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionResponse other) {
    _$v = other as _$TransactionResponse;
  }

  @override
  void update(void Function(TransactionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TransactionResponse build() => _build();

  _$TransactionResponse _build() {
    _$TransactionResponse _$result;
    try {
      _$result = _$v ??
          _$TransactionResponse._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'TransactionResponse', 'id'),
            account: account.build(),
            category: category.build(),
            amount: BuiltValueNullFieldError.checkNotNull(
                amount, r'TransactionResponse', 'amount'),
            transactionDate: BuiltValueNullFieldError.checkNotNull(
                transactionDate, r'TransactionResponse', 'transactionDate'),
            comment: comment,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'TransactionResponse', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'TransactionResponse', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        account.build();
        _$failedField = 'category';
        category.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TransactionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
