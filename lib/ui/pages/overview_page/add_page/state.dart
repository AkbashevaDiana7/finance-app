import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'state.freezed.dart';

@freezed
class AddPageState with _$AddPageState {
  const factory AddPageState({
    required Transaction transaction,
    required Account account,
    required Category category,
  }) = _AddPageState;
}
