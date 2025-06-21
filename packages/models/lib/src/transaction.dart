import 'package:freezed_annotation/freezed_annotation.dart';
import 'account.dart';
import 'category.dart';
import 'money.dart';

part 'transaction.freezed.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    required int id,
    required int accountId,
    required int categoryId,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Transaction;
}

@freezed
class TransactionWithDetails with _$TransactionWithDetails {
  const factory TransactionWithDetails({
    required int id,
    required Account account,
    required Category category,
    required Money amount,
    required DateTime transactionDate,
    String? comment,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _TransactionWithDetails;
}

@freezed
class TransactionFilter with _$TransactionFilter {
  const factory TransactionFilter({
    int? accountId,
    int? categoryId,
    DateTime? startDate,
    DateTime? endDate,
    bool? isIncome,
    Money? minAmount,
    Money? maxAmount,
    String? searchText,
  }) = _TransactionFilter;
}

@freezed
class Period with _$Period {
  const factory Period({
    required DateTime startDate,
    required DateTime endDate,
  }) = _Period;

  const Period._();

  /// Создает период для текущего месяца
  factory Period.currentMonth() {
    final now = DateTime.now();
    final startOfMonth = DateTime(now.year, now.month, 1);
    final endOfMonth = DateTime(now.year, now.month + 1, 0, 23, 59, 59);

    return Period(startDate: startOfMonth, endDate: endOfMonth);
  }

  /// Создает период для прошлого месяца
  factory Period.lastMonth() {
    final now = DateTime.now();
    final startOfLastMonth = DateTime(now.year, now.month - 1, 1);
    final endOfLastMonth = DateTime(now.year, now.month, 0, 23, 59, 59);

    return Period(startDate: startOfLastMonth, endDate: endOfLastMonth);
  }

  /// Создает период для текущего года
  factory Period.currentYear() {
    final now = DateTime.now();
    final startOfYear = DateTime(now.year, 1, 1);
    final endOfYear = DateTime(now.year, 12, 31, 23, 59, 59);

    return Period(startDate: startOfYear, endDate: endOfYear);
  }

  /// Продолжительность периода в днях
  int get durationInDays => endDate.difference(startDate).inDays + 1;

  /// Проверяет, содержит ли период указанную дату
  bool contains(DateTime date) {
    return date.isAfter(startDate.subtract(const Duration(seconds: 1))) &&
        date.isBefore(endDate.add(const Duration(seconds: 1)));
  }
}
