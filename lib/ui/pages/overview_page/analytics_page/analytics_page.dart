import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../../core/utils/datetime_extension.dart';
import '../../../../scope/scope.dart';
import '../../../widgets/widgets.dart';
import '../overview_navigation.dart';
import '../overview_page_data.dart';
import '../widgets/widgets.dart';

class AnalyticsPage extends StatelessWidget {
  final bool income;

  const AnalyticsPage({super.key, required this.income});

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
          title: Text('Анализ', style: Theme.of(context).textTheme.titleLarge),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => navigation.pop(),
          ),
          actions: [
            IconButton(
              onPressed:
                  () => context.pageNavigation<OverviewNavigationState>().goTo(
                    OverviewNavigationState.analytics,
                  ),
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
                      PageRow.custom(
                        amountWidget: _PickBadge(
                          text:
                              filterManager
                                  .filterState
                                  .value
                                  .startDate
                                  .formattedMonthAndYear,
                        ),
                        text: 'Период: начало',
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
                      PageRow.custom(
                        amountWidget: _PickBadge(
                          text:
                              filterManager
                                  .filterState
                                  .value
                                  .endDate
                                  .formattedMonthAndYear,
                        ),
                        text: 'Период: конец',
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
                        PageRow.custom(
                          amount: snapshot.data?.amount ?? '',
                          text: 'Сумма',
                        ),

                        Expanded(
                          child: ListView.builder(
                            itemCount: snapshot.data?.rows.length ?? 0,
                            itemBuilder: (context, index) {
                              final data = snapshot.data!.rows.elementAt(index);
                              return OverviewPageRowFactory.fromData(
                                data,
                                onTap:
                                    () => _edit(
                                      context,
                                      transactionId: data.transactionId,
                                    ),
                              );
                            },
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

  Future<void> _edit(BuildContext context, {required int transactionId}) async {
    if (!context.mounted) {
      return;
    }

    ScopeProvider.of<AppContainer>(context, listen: false)!
        .overviewAddPageScopeHolder
        .edit(income: income, transactionId: transactionId);

    context.pageNavigation<OverviewNavigationState>().goTo(
      OverviewNavigationState.add,
    );
  }
}

class _PickBadge extends StatelessWidget {
  final String _text;

  const _PickBadge({required String text}) : _text = text;

  static const _backgroundColor = Color(0xff2AE881);

  @override
  Widget build(BuildContext context) => DecoratedBox(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      color: _backgroundColor,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

      child: Text(_text, style: TextTheme.of(context).titleMedium),
    ),
  );
}
