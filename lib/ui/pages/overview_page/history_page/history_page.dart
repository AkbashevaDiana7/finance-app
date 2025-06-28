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

export 'scope.dart';

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
          title: Text(
            'Моя история',
            style: Theme.of(context).textTheme.titleLarge,
          ),
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
