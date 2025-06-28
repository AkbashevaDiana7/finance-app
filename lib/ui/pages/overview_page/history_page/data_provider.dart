import 'package:models/models.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../domain/transactions/transactions.dart';
import '../overview_page_data.dart';
import 'filter.dart';

class HistoryPageDataProvider {
  final ValueStream<Iterable<Transaction>?> _transactions;
  final ValueStream<Iterable<Category>?> _categories;

  final HistoryPageFilterManager _filterManager;

  const HistoryPageDataProvider({
    required HistoryPageFilterManager filterManager,
    required ValueStream<Iterable<Transaction>?> transactions,
    required ValueStream<Iterable<Category>?> categories,
  }) : _transactions = transactions,
       _categories = categories,
       _filterManager = filterManager;

  Stream<OverviewPageData> stream({required bool income}) => Rx.combineLatest2(
    _transactions,
    _filterManager.filterState,
    (_, __) => data(income: income),
  );

  OverviewPageData data({required bool income}) =>
      OverviewPageDataBuilder.detailed(
        income: income,
        filter: TransactionsFilter.combine([
          TransactionsFilter.dateRange(
            startDate: _filterManager.filterState.value.startDate,
            endDate: _filterManager.filterState.value.endDate,
          ),
          TransactionsFilter.categories(categories: _categories.value ?? []),
        ]),
        categories: _categories.value ?? [],
      ).create(_transactions.value ?? []);
}
