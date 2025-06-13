import 'package:freezed_annotation/freezed_annotation.dart';
import 'stat_item.dart';
import 'money.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  const factory Account({
    required int id,
    required int userId,
    required String name,
    required Money balance,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Account;
}

@freezed
class AccountState with _$AccountState {
  const factory AccountState({
    required int id,
    required String name,
    required Money balance,
  }) = _AccountState;
}

@freezed
class AccountHistory with _$AccountHistory {
  const factory AccountHistory({
    required int id,
    required int accountId,
    required AccountChangeType changeType,
    AccountState? previousState,
    required AccountState newState,
    required DateTime changeTimestamp,
    required DateTime createdAt,
  }) = _AccountHistory;
}

enum AccountChangeType {
  @JsonValue('CREATION')
  creation,
  @JsonValue('MODIFICATION')
  modification,
}

@freezed
class AccountSummary with _$AccountSummary {
  const factory AccountSummary({
    required Account account,
    required Money totalIncome,
    required Money totalExpense,
    required List<StatItem> incomeStats,
    required List<StatItem> expenseStats,
  }) = _AccountSummary;
}
