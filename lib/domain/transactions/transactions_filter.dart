import 'package:models/models.dart';

import '../../core/utils/datetime_extension.dart';

sealed class TransactionsFilter {
  const TransactionsFilter._();

  Iterable<Transaction> filter(Iterable<Transaction> transactions);

  const factory TransactionsFilter.today() = _TodayTransactionsFilter;
  const factory TransactionsFilter.dateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) = _DateRangeTransactionsFilter;
  factory TransactionsFilter.categories({
    required Iterable<Category> categories,
  }) => _CategoriesTransactionsFilter(categories: categories);
  const factory TransactionsFilter.combine(List<TransactionsFilter> filters) =
      _CombineTransactionsFilter;
}

class _CombineTransactionsFilter extends TransactionsFilter {
  final List<TransactionsFilter> filters;
  const _CombineTransactionsFilter(this.filters) : super._();

  @override
  Iterable<Transaction> filter(Iterable<Transaction> transactions) =>
      filters.fold<Iterable<Transaction>>(
        transactions,
        (prev, filter) => filter.filter(prev),
      );
}

class _TodayTransactionsFilter extends TransactionsFilter {
  const _TodayTransactionsFilter() : super._();

  @override
  Iterable<Transaction> filter(Iterable<Transaction> transactions) =>
      transactions.where((t) => t.transactionDate.sameDay);
}

class _DateRangeTransactionsFilter extends TransactionsFilter {
  final DateTime startDate;
  final DateTime endDate;

  const _DateRangeTransactionsFilter({
    required this.startDate,
    required this.endDate,
  }) : super._();

  @override
  Iterable<Transaction> filter(Iterable<Transaction> transactions) =>
      transactions.where(
        (t) => t.transactionDate.isBetweenDays(startDate, endDate),
      );
}

class _CategoriesTransactionsFilter extends TransactionsFilter {
  final Set<int> categoriesIds;

  static Set<int> _categoryIds(Iterable<Category> categories) =>
      categories.map((c) => c.id).toSet();

  _CategoriesTransactionsFilter({required Iterable<Category> categories})
    : categoriesIds = _categoryIds(categories),
      super._();

  @override
  Iterable<Transaction> filter(Iterable<Transaction> transactions) =>
      transactions.where((t) => categoriesIds.contains(t.categoryId));
}
