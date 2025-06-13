// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stat_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StatItem extends StatItem {
  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  final String emoji;
  @override
  final String amount;

  factory _$StatItem([void Function(StatItemBuilder)? updates]) =>
      (StatItemBuilder()..update(updates))._build();

  _$StatItem._(
      {required this.categoryId,
      required this.categoryName,
      required this.emoji,
      required this.amount})
      : super._();
  @override
  StatItem rebuild(void Function(StatItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatItemBuilder toBuilder() => StatItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatItem &&
        categoryId == other.categoryId &&
        categoryName == other.categoryName &&
        emoji == other.emoji &&
        amount == other.amount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, categoryId.hashCode);
    _$hash = $jc(_$hash, categoryName.hashCode);
    _$hash = $jc(_$hash, emoji.hashCode);
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StatItem')
          ..add('categoryId', categoryId)
          ..add('categoryName', categoryName)
          ..add('emoji', emoji)
          ..add('amount', amount))
        .toString();
  }
}

class StatItemBuilder implements Builder<StatItem, StatItemBuilder> {
  _$StatItem? _$v;

  int? _categoryId;
  int? get categoryId => _$this._categoryId;
  set categoryId(int? categoryId) => _$this._categoryId = categoryId;

  String? _categoryName;
  String? get categoryName => _$this._categoryName;
  set categoryName(String? categoryName) => _$this._categoryName = categoryName;

  String? _emoji;
  String? get emoji => _$this._emoji;
  set emoji(String? emoji) => _$this._emoji = emoji;

  String? _amount;
  String? get amount => _$this._amount;
  set amount(String? amount) => _$this._amount = amount;

  StatItemBuilder() {
    StatItem._defaults(this);
  }

  StatItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _categoryId = $v.categoryId;
      _categoryName = $v.categoryName;
      _emoji = $v.emoji;
      _amount = $v.amount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatItem other) {
    _$v = other as _$StatItem;
  }

  @override
  void update(void Function(StatItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StatItem build() => _build();

  _$StatItem _build() {
    final _$result = _$v ??
        _$StatItem._(
          categoryId: BuiltValueNullFieldError.checkNotNull(
              categoryId, r'StatItem', 'categoryId'),
          categoryName: BuiltValueNullFieldError.checkNotNull(
              categoryName, r'StatItem', 'categoryName'),
          emoji: BuiltValueNullFieldError.checkNotNull(
              emoji, r'StatItem', 'emoji'),
          amount: BuiltValueNullFieldError.checkNotNull(
              amount, r'StatItem', 'amount'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
