import 'package:flutter/material.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../../scope/scope.dart';
import '../../../widgets/widgets.dart';
import '../overview_navigation.dart';
import '../overview_page_data.dart';
import '../widgets/widgets.dart';

class OverviewHomePage extends StatelessWidget {
  final bool income;
  final OverviewPageData data;

  const OverviewHomePage({super.key, required this.data, required this.income});

  Future<void> _add(BuildContext context) async {
    if (!context.mounted) {
      return;
    }

    ScopeProvider.of<AppContainer>(
      context,
      listen: false,
    )!.overviewAddPageScopeHolder.addNew(income: income);

    context.pageNavigation<OverviewNavigationState>().goTo(
      OverviewNavigationState.add,
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: _HeaderWidget(header: data.header),
    floatingActionButton: AddItemIconButton(
      onTap: () async => await _add(context),
    ),
    body: Column(
      children: [
        PageRow.header(amount: data.amount, text: 'Всего'),
        Expanded(
          child: ListView.builder(
            itemBuilder:
                (_, index) => OverviewPageRowFactory.fromData(
                  data.rows.elementAt(index),
                  key: ValueKey(data.rows.elementAt(index).transactionId),
                ),
            itemCount: data.rows.length,
          ),
        ),
      ],
    ),
  );
}

class _HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String header;

  const _HeaderWidget({required this.header});

  @override
  AppBar build(BuildContext context) {
    final navigation = context.pageNavigation<OverviewNavigationState>();

    return AppBar(
      title: Text(header, style: Theme.of(context).textTheme.titleLarge),
      actions: [
        IconButton(
          onPressed: () => navigation.goTo(OverviewNavigationState.history),
          icon: const Icon(Icons.history),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
