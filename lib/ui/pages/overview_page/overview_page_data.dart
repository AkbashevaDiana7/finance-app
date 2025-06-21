import 'package:finance_app/core/utils/datetime_extension.dart';
import 'package:models/models.dart';
import 'package:rxdart/rxdart.dart';

import '../../../domain/transactions/transactions.dart';

abstract interface class OverviewPageData {
  String get header;
  String get amount;
  Iterable<OverviewPageRowData> get rows;
}

abstract interface class OverviewPageRowData {
  String get text;
  String? get subText;
  String get amount;
  String? get iconText;
}

class _OverviewPageRowDataImpl implements OverviewPageRowData {
  @override
  final String text;
  @override
  final String? subText;
  @override
  final String amount;
  @override
  final String? iconText;

  const _OverviewPageRowDataImpl({
    required this.text,
    required this.amount,
    required this.subText,
    required this.iconText,
  });
}

/// Асинхронная реализация OverviewPageData через репозитории
class OverviewPageDataTransformer implements OverviewPageData {
  @override
  final String header;

  @override
  final String amount;

  @override
  final Iterable<OverviewPageRowData> rows;

  OverviewPageDataTransformer._({
    required this.header,
    required this.amount,
    required this.rows,
  });

  /// Фабрика для создания данных по расходам/доходам за сегодня
  static OverviewPageData map({
    required ValueStream<Iterable<Transaction>?> transactions,
    required ValueStream<Iterable<Category>?> categories,
    required bool income,
  }) {
    final allTransactions = transactions.value ?? [];
    final targetCategories =
        categories.value?.where((c) => c.isIncome == income).toList() ?? [];

    return OverviewPageDataBuilder.grouped(
      income: income,
      filter: TransactionsFilter.combine([
        TransactionsFilter.today(),
        TransactionsFilter.categories(categories: targetCategories),
      ]),
      categories: targetCategories,
    ).create(allTransactions);
  }
}

abstract interface class OverviewPageDataBuilder {
  OverviewPageData create(Iterable<Transaction> allTransactions);

  const factory OverviewPageDataBuilder.grouped({
    required bool income,
    required TransactionsFilter filter,
    required Iterable<Category> categories,
  }) = _GroupedOverviewPageDataBuilder;

  const factory OverviewPageDataBuilder.detailed({
    required bool income,
    required TransactionsFilter filter,
    required Iterable<Category> categories,
  }) = _DetailedOverviewPageDataBuilder;
}

class _GroupedOverviewPageDataBuilder implements OverviewPageDataBuilder {
  final bool income;
  final TransactionsFilter filter;
  final Iterable<Category> categories;

  const _GroupedOverviewPageDataBuilder({
    required this.income,
    required this.filter,
    required this.categories,
  });

  @override
  OverviewPageData create(Iterable<Transaction> allTransactions) {
    final transactions = TransactionsFilter.combine([
      TransactionsFilter.today(),
      TransactionsFilter.categories(categories: categories),
    ]).filter(allTransactions);

    final grouped = transactions.groupByCategoryId();

    final categoriesMap = Map<int, Category>.fromIterable(
      categories,
      key: (c) => (c as Category).id,
    );

    final rows = grouped.entries.map(
      (entry) => _OverviewPageRowDataImpl(
        text: categoriesMap[entry.key]!.name,
        amount: entry.value.amount.formatted,
        iconText: categoriesMap[entry.key]!.emoji,
        subText: null,
      ),
    );

    return OverviewPageDataTransformer._(
      header: income ? 'Доходы сегодня' : 'Расходы сегодня',
      amount: transactions.amount.formatted,
      rows: rows,
    );
  }
}

class _DetailedOverviewPageDataBuilder implements OverviewPageDataBuilder {
  final bool income;
  final TransactionsFilter filter;
  final Iterable<Category> categories;

  const _DetailedOverviewPageDataBuilder({
    required this.income,
    required this.filter,
    required this.categories,
  });

  @override
  OverviewPageData create(Iterable<Transaction> allTransactions) {
    final transactions = filter.filter(allTransactions);

    final categoriesMap = Map<int, Category>.fromIterable(
      categories,
      key: (c) => (c as Category).id,
    );

    final rows = transactions.map(
      (entry) => _OverviewPageRowDataImpl(
        text: categoriesMap[entry.categoryId]!.name,
        subText: entry.comment,
        amount: '${entry.amount.formatted}\n${entry.transactionDate.formatted}',
        iconText: categoriesMap[entry.categoryId]!.emoji,
      ),
    );

    return OverviewPageDataTransformer._(
      header: income ? 'Доходы сегодня' : 'Расходы сегодня',
      amount: transactions.amount.formatted,
      rows: rows,
    );
  }
}
