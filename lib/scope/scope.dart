import 'package:api/api.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yx_scope/yx_scope.dart';

import '../core/config/app_config.dart';
import '../core/network/large_json_interceptor.dart';
import '../core/router/state_holder.dart';
import '../domain/accounts/accounts.dart';
import '../domain/categories/categories.dart';
import '../domain/transactions/scope.dart';
import '../ui/pages/overview_page/add_page/add_page_scope.dart';
import '../ui/pages/overview_page/history_page/history_page.dart';

abstract interface class AppScope implements Scope {
  Dep<NavigationStateHolder> get navigationStateHolderDep;
  Dep<BuildContext> get appContextDep;
  Api get api;
  Dio get dio;

  AddPageScopeHolder get overviewAddPageScopeHolder;
  HistoryPageScope get historyPageModule;

  AccountsScope get accounts;
  CategoriesScope get categories;
  TransactionsScope get transactions;
}

class AppContainer extends ScopeContainer implements AppScope {
  final GlobalKey _globalKey;

  AppContainer({super.name, required GlobalKey globalKey})
      : _globalKey = globalKey;

  @override
  late final Dep<BuildContext> appContextDep = dep(
    () => _globalKey.currentContext!,
  );

  @override
  late final Dep<NavigationStateHolder> navigationStateHolderDep = dep(
    () => NavigationStateHolder(),
  );

  late final apiDep = dep(
    () {
      final api = Api()
        ..setBearerAuth('bearerAuth', AppConfigHolder.instance.apiToken);
      api.dio.interceptors.add(LargeJsonInterceptor());
      return api;
    },
  );

  @override
  late final historyPageModule = HistoryPageModule(this);

  @override
  late final overviewAddPageScopeHolder = AddPageScopeHolder(this);

  @override
  late final accounts = AccountsModule(this);

  @override
  late final categories = CategoriesModule(this);

  @override
  late final transactions = TransactionsModule(this);

  @override
  List<Set<AsyncDep>> get initializeQueue => [
        {transactions.eventStoreFactoryDep},
        {accounts.serviceDep, categories.serviceDep, transactions.serviceDep},
        {historyPageModule.filterManagerDep},
      ];

  @override
  Api get api => apiDep.get;

  @override
  Dio get dio => apiDep.get.dio;
}

class AppScopeHolder extends ScopeHolder<AppContainer> {
  final GlobalKey globalKey;

  AppScopeHolder({required this.globalKey});

  @override
  AppContainer createContainer() => AppContainer(globalKey: globalKey);
}
