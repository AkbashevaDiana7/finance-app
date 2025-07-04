// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Category extends Category {
  @override
  final int id;
  @override
  final String name;
  @override
  final String emoji;
  @override
  final bool isIncome;

  factory _$Category([void Function(CategoryBuilder)? updates]) =>
      (CategoryBuilder()..update(updates))._build();

  _$Category._(
      {required this.id,
      required this.name,
      required this.emoji,
      required this.isIncome})
      : super._();
  @override
  Category rebuild(void Function(CategoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoryBuilder toBuilder() => CategoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Category &&
        id == other.id &&
        name == other.name &&
        emoji == other.emoji &&
        isIncome == other.isIncome;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, emoji.hashCode);
    _$hash = $jc(_$hash, isIncome.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Category')
          ..add('id', id)
          ..add('name', name)
          ..add('emoji', emoji)
          ..add('isIncome', isIncome))
        .toString();
  }
}

class CategoryBuilder implements Builder<Category, CategoryBuilder> {
  _$Category? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _emoji;
  String? get emoji => _$this._emoji;
  set emoji(String? emoji) => _$this._emoji = emoji;

  bool? _isIncome;
  bool? get isIncome => _$this._isIncome;
  set isIncome(bool? isIncome) => _$this._isIncome = isIncome;

  CategoryBuilder() {
    Category._defaults(this);
  }

  CategoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _emoji = $v.emoji;
      _isIncome = $v.isIncome;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Category other) {
    _$v = other as _$Category;
  }

  @override
  void update(void Function(CategoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Category build() => _build();

  _$Category _build() {
    final _$result = _$v ??
        _$Category._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Category', 'id'),
          name:
              BuiltValueNullFieldError.checkNotNull(name, r'Category', 'name'),
          emoji: BuiltValueNullFieldError.checkNotNull(
              emoji, r'Category', 'emoji'),
          isIncome: BuiltValueNullFieldError.checkNotNull(
              isIncome, r'Category', 'isIncome'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
