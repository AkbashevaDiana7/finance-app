// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stat_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$StatItem {
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  Money get amount => throw _privateConstructorUsedError;

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatItemCopyWith<StatItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatItemCopyWith<$Res> {
  factory $StatItemCopyWith(StatItem value, $Res Function(StatItem) then) =
      _$StatItemCopyWithImpl<$Res, StatItem>;
  @useResult
  $Res call({int categoryId, String categoryName, String emoji, Money amount});

  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class _$StatItemCopyWithImpl<$Res, $Val extends StatItem>
    implements $StatItemCopyWith<$Res> {
  _$StatItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? emoji = null,
    Object? amount = null,
  }) {
    return _then(
      _value.copyWith(
            categoryId:
                null == categoryId
                    ? _value.categoryId
                    : categoryId // ignore: cast_nullable_to_non_nullable
                        as int,
            categoryName:
                null == categoryName
                    ? _value.categoryName
                    : categoryName // ignore: cast_nullable_to_non_nullable
                        as String,
            emoji:
                null == emoji
                    ? _value.emoji
                    : emoji // ignore: cast_nullable_to_non_nullable
                        as String,
            amount:
                null == amount
                    ? _value.amount
                    : amount // ignore: cast_nullable_to_non_nullable
                        as Money,
          )
          as $Val,
    );
  }

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyCopyWith<$Res> get amount {
    return $MoneyCopyWith<$Res>(_value.amount, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatItemImplCopyWith<$Res>
    implements $StatItemCopyWith<$Res> {
  factory _$$StatItemImplCopyWith(
    _$StatItemImpl value,
    $Res Function(_$StatItemImpl) then,
  ) = __$$StatItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, String categoryName, String emoji, Money amount});

  @override
  $MoneyCopyWith<$Res> get amount;
}

/// @nodoc
class __$$StatItemImplCopyWithImpl<$Res>
    extends _$StatItemCopyWithImpl<$Res, _$StatItemImpl>
    implements _$$StatItemImplCopyWith<$Res> {
  __$$StatItemImplCopyWithImpl(
    _$StatItemImpl _value,
    $Res Function(_$StatItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? emoji = null,
    Object? amount = null,
  }) {
    return _then(
      _$StatItemImpl(
        categoryId:
            null == categoryId
                ? _value.categoryId
                : categoryId // ignore: cast_nullable_to_non_nullable
                    as int,
        categoryName:
            null == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                    as String,
        emoji:
            null == emoji
                ? _value.emoji
                : emoji // ignore: cast_nullable_to_non_nullable
                    as String,
        amount:
            null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                    as Money,
      ),
    );
  }
}

/// @nodoc

class _$StatItemImpl implements _StatItem {
  const _$StatItemImpl({
    required this.categoryId,
    required this.categoryName,
    required this.emoji,
    required this.amount,
  });

  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  final String emoji;
  @override
  final Money amount;

  @override
  String toString() {
    return 'StatItem(categoryId: $categoryId, categoryName: $categoryName, emoji: $emoji, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatItemImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, emoji, amount);

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatItemImplCopyWith<_$StatItemImpl> get copyWith =>
      __$$StatItemImplCopyWithImpl<_$StatItemImpl>(this, _$identity);
}

abstract class _StatItem implements StatItem {
  const factory _StatItem({
    required final int categoryId,
    required final String categoryName,
    required final String emoji,
    required final Money amount,
  }) = _$StatItemImpl;

  @override
  int get categoryId;
  @override
  String get categoryName;
  @override
  String get emoji;
  @override
  Money get amount;

  /// Create a copy of StatItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatItemImplCopyWith<_$StatItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
