import 'package:flutter/material.dart';

import '../router/router.dart';
import '../tab/tab.dart';

class AppRoot extends StatelessWidget {
  final Widget page;
  final NavigationStateHolder stateHolder;

  const AppRoot({super.key, required this.page, required this.stateHolder});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: page,
    backgroundColor: Theme.of(context).colorScheme.surface,
    bottomNavigationBar: TabNavigationBar<_TabItemImpl>(
      tabs: _TabItemImpl.values,
      onSelected:
          (tab) => switch (tab) {
            _TabItemImpl.expenses => stateHolder.goToExpenses(),
            _TabItemImpl.income => stateHolder.goToIncome(),
            _TabItemImpl.account => stateHolder.goToAccount(),
            _TabItemImpl.articles => stateHolder.goToArticles(),
            _TabItemImpl.settings => stateHolder.goToSettings(),
          },
    ),
  );
}

enum _TabItemImpl implements TabItem {
  expenses(text: 'Расходы', iconPath: 'assets/icons/svg/downtrend.svg'),
  income(text: 'Доходы', iconPath: 'assets/icons/svg/uptrend.svg'),
  account(text: 'Счет', iconPath: 'assets/icons/svg/calculator.svg'),
  articles(text: 'Статьи', iconPath: 'assets/icons/svg/bar-chart-side.svg'),
  settings(text: 'Настройки', iconPath: 'assets/icons/svg/settings.svg');

  @override
  final String text;

  @override
  final String iconPath;

  const _TabItemImpl({required this.text, required this.iconPath});
}
