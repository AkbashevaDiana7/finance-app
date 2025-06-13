import 'package:freezed_annotation/freezed_annotation.dart';
import 'money.dart';

part 'stat_item.freezed.dart';

@freezed
class StatItem with _$StatItem {
  const factory StatItem({
    required int categoryId,
    required String categoryName,
    required String emoji,
    required Money amount,
  }) = _StatItem;
} 
