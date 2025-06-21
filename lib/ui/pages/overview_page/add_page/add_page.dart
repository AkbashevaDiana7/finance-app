import 'package:finance_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../overview_navigation.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key, required bool income});

  @override
  Widget build(BuildContext context) {
    final navigation = context.pageNavigation<OverviewNavigationState>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => navigation.pop(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Мои расходы'),
          leading: IconButton(
            onPressed: () => navigation.pop(),
            icon: const Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () => navigation.pop(),
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: ListView(
          children: [
            PageRow.item(amount: 'Сбербанк', text: 'Счет', onTap: () {}),
            PageRow.item(amount: 'Ремонт', text: 'Статья', onTap: () {}),
            PageRow.item(amount: '25 270 ₽', text: 'Сумма'),
            PageRow.item(amount: '25.02.2025', text: 'Дата'),
            PageRow.item(amount: '23:41', text: 'Время'),
            PageRow.item(text: 'Ремонт - фурнитура для дверей'),
            ErrorButton(text: 'Удалить расход', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
