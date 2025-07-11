import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:models/models.dart';

part 'transaction_event.freezed.dart';
part 'transaction_event.g.dart';

@freezed
class TransactionEvent with _$TransactionEvent {
  const factory TransactionEvent.created({
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
  }) = TransactionCreated;

  const factory TransactionEvent.updated({
    required int id,
    int? accountId,
    int? categoryId,
    Money? amount,
    DateTime? transactionDate,
    String? comment,
  }) = TransactionUpdated;

  const factory TransactionEvent.deleted(int id) = TransactionDeleted;

  factory TransactionEvent.fromJson(Map<String, dynamic> json) =>
      _$TransactionEventFromJson(json);
}
