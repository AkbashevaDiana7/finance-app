import 'package:flutter/material.dart';

import 'package:models/models.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../scope/scope.dart';
import 'add_page/add_page.dart';
import 'analytics_page/analytics_page.dart';
import 'history_page/history_page.dart';
import 'overview_home_page/overview_home_page.dart';
import 'overview_navigation.dart';
import 'overview_page_data.dart';

export 'add_page/add_page.dart';
export 'history_page/history_page.dart';

class OverviewPage extends StatelessWidget {
  final bool income;

  const OverviewPage({super.key, required this.income});

  OverviewPageData _map(
    BuildContext context,
    Iterable<Transaction>? transactions,
  ) => OverviewPageDataTransformer.map(
    transactions:
        ScopeProvider.of<AppContainer>(
          context,
        )!.transactions.serviceDep.get.value,
    categories:
        ScopeProvider.of<AppContainer>(
          context,
        )!.categories.serviceDep.get.value,
    income: income,
  );

  @override
  Widget build(BuildContext context) => OverviewNavigationScope(
    pageBuilder:
        (state) => StreamBuilder(
          stream:
              ScopeProvider.of<AppContainer>(
                context,
              )!.transactions.serviceDep.get.value,
          initialData:
              ScopeProvider.of<AppContainer>(
                context,
              )!.transactions.serviceDep.get.value.value,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            return switch (state) {
              OverviewNavigationState.home => OverviewHomePage(
                data: _map(context, snapshot.data),
                income: income,
              ),
              OverviewNavigationState.add => AddPage(
                key: ValueKey('add-${income ? 'income' : 'expenses'}'),
                income: income,
              ),
              OverviewNavigationState.history => HistoryPage(
                key: ValueKey('history-${income ? 'income' : 'expenses'}'),
                income: income,
              ),
              OverviewNavigationState.analytics => AnalyticsPage(
                key: ValueKey('analytics-${income ? 'income' : 'expenses'}'),
                income: income,
              ),
            };
          },
        ),
  );
}
