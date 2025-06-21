import 'dart:async';

import 'package:finance_app/core/utils/datetime_extension.dart';
import 'package:finance_app/ui/pages/overview_page/overview_page_data.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:models/models.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yx_scope/yx_scope.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../../domain/transactions/transactions.dart';
import '../../../../scope/scope.dart';
import '../../../widgets/widgets.dart';
import '../overview_navigation.dart';
import '../widgets/widgets.dart';

class HistoryPageFilterState {
  final DateTime startDate;
  final DateTime endDate;

  HistoryPageFilterState({required this.startDate, required this.endDate});

  HistoryPageFilterState copyWith({DateTime? startDate, DateTime? endDate}) =>
      HistoryPageFilterState(
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
      );
}

class HistoryPageFilterManager implements AsyncLifecycle {
  static HistoryPageFilterState get defaultFilterState =>
      HistoryPageFilterState(
        startDate: DateTime.now().subtract(const Duration(days: 30)),
        endDate: DateTime.now(),
      );

  final BehaviorSubject<HistoryPageFilterState> _filterStateSubject =
      BehaviorSubject.seeded(defaultFilterState);

  Timer? _timer;

  ValueStream<HistoryPageFilterState> get filterState => _filterStateSubject;

  set startDate(DateTime startDate) => _filterStateSubject.add(
    _filterStateSubject.value.copyWith(startDate: startDate),
  );

  set endDate(DateTime endDate) => _filterStateSubject.add(
    _filterStateSubject.value.copyWith(endDate: endDate),
  );

  @override
  Future<void> dispose() async {
    _timer?.cancel();
    _timer = null;
  }

  @override
  Future<void> init() async {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      _syncFilterState();
    });
  }

  /// Поддерживает время в актуальном состоянии
  void _syncFilterState() {
    if (_filterStateSubject.value.endDate.epsilonSomeDay) {
      _filterStateSubject.add(
        _filterStateSubject.value.copyWith(endDate: DateTime.now()),
      );
    }
  }
}

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

class HistoryPageModule extends ScopeModule<AppContainer> {
  HistoryPageModule(super.container);

  late final AsyncDep<HistoryPageFilterManager> filterManagerDep = asyncDep(
    () => HistoryPageFilterManager(),
  );

  late final Dep<HistoryPageDataProvider> dataProviderDep = dep(
    () => HistoryPageDataProvider(
      filterManager: filterManagerDep.get,
      transactions: container.transactionsDep.get,
      categories: container.categoriesDep.get,
    ),
  );
}

class HistoryPage extends StatelessWidget {
  final bool income;

  const HistoryPage({super.key, required this.income});

  @override
  Widget build(BuildContext context) {
    final navigation = context.pageNavigation<OverviewNavigationState>();
    final scope = ScopeProvider.of<AppContainer>(context)!.historyPageModule;
    final filterManager = scope.filterManagerDep.get;
    final dataProvider = scope.dataProviderDep.get;

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => navigation.pop(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('История', style: Theme.of(context).textTheme.titleLarge),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => navigation.pop(),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(MdiIcons.clipboardTextClockOutline),
            ),
          ],
        ),
        body: Column(
          children: [
            StreamBuilder(
              stream: filterManager.filterState,
              initialData: filterManager.filterState.value,
              builder:
                  (context, _) => Column(
                    children: [
                      PageRow.header(
                        amount:
                            filterManager.filterState.value.startDate.formatted,
                        text: 'Начало',
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1970, 1, 1),
                            lastDate: DateTime.now(),
                            locale: const Locale('ru', 'RU'),
                          );

                          if (date != null) {
                            filterManager.startDate = date;
                          }
                        },
                      ),
                      PageRow.header(
                        amount:
                            filterManager.filterState.value.endDate.formatted,
                        text: 'Конец',
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1970, 1, 1),
                            lastDate: DateTime.now(),
                            locale: const Locale('ru', 'RU'),
                          );

                          if (date != null) {
                            filterManager.endDate = date;
                          }
                        },
                      ),
                    ],
                  ),
            ),
            Expanded(
              child: StreamBuilder<OverviewPageData>(
                stream: dataProvider.stream(income: income),
                initialData: dataProvider.data(income: income),
                builder:
                    (context, snapshot) => Column(
                      children: [
                        PageRow.header(
                          amount: snapshot.data?.amount ?? '',
                          text: 'Сумма',
                        ),

                        Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data?.rows.length ?? 0,
                            itemBuilder:
                                (context, index) =>
                                    OverviewPageRowFactory.fromData(
                                      snapshot.data!.rows.elementAt(index),
                                    ),
                          ),
                        ),
                      ],
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
