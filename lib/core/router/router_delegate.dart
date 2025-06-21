import 'package:flutter/material.dart';
import 'dart:async';

import 'route_path.dart';
import 'state_holder.dart';
import '../../ui/pages/pages.dart';

import '../pages_root/pages_root.dart';

/// RouterDelegate
class AppRouterDelegate extends RouterDelegate<AppRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  final NavigationStateHolder stateHolder;

  late final StreamSubscription _sub;

  AppRouterDelegate(this.stateHolder)
    : navigatorKey = GlobalKey<NavigatorState>() {
    _sub = stateHolder.routeStream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  AppRoutePath get currentConfiguration => stateHolder.currentRoute;

  @override
  Widget build(BuildContext context) => Navigator(
    key: navigatorKey,
    pages:
        <Widget>[
          switch (stateHolder.currentRoute) {
            AppRoutePath.expenses => AppRoot(
              key: ValueKey('expenses'),
              page: OverviewPage(income: false),
              stateHolder: stateHolder,
            ),
            AppRoutePath.income => AppRoot(
              key: ValueKey('income'),
              page: OverviewPage(income: true),
              stateHolder: stateHolder,
            ),
            AppRoutePath.account => AppRoot(
              page: AccountPage(),
              stateHolder: stateHolder,
            ),
            _ => Material(
              child: InkWell(
                onTap: () => stateHolder.goToHome(),
                child: Center(child: Text('Home')),
              ),
            ),
          },
        ].whereType<Widget>().map((e) => MaterialPage(child: e)).toList(),
    onDidRemovePage: (page) => stateHolder.goToHome(),
  );

  @override
  Future<void> setNewRoutePath(AppRoutePath configuration) async =>
      switch (configuration) {
        AppRoutePath.expenses => stateHolder.goToExpenses(),
        AppRoutePath.income => stateHolder.goToIncome(),
        AppRoutePath.account => stateHolder.goToAccount(),
        AppRoutePath.articles => stateHolder.goToArticles(),
        AppRoutePath.settings => stateHolder.goToSettings(),
      };
}
