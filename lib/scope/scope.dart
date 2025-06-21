import 'package:finance_app/core/repository_service/repository_service.dart';
import 'package:finance_app/core/router/state_holder.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:repository_mocks/repository_mocks.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yx_scope/yx_scope.dart';

import '../ui/pages/overview_page/history_page/history_page.dart';

abstract interface class AppScope implements Scope {
  Dep<ValueStream<Iterable<Category>?>> get categoriesDep;
  Dep<ValueStream<Iterable<Transaction>?>> get transactionsDep;
  Dep<ValueStream<Iterable<Account>?>> get accountsDep;

  Dep<NavigationStateHolder> get navigationStateHolderDep;

  Dep<BuildContext> get appContextDep;
}

class AppContainer extends ScopeContainer implements AppScope {
  final GlobalKey globalKey;

  AppContainer({super.name, required this.globalKey});

  @override
  late final Dep<BuildContext> appContextDep = dep(
    () => globalKey.currentContext!,
  );

  @override
  late final Dep<NavigationStateHolder> navigationStateHolderDep = dep(
    () => NavigationStateHolder(),
  );

  late final Dep<CategoryRepository> _categoryRepositoryDep = dep(
    () => CategoryRepositoryMock(),
  );

  late final Dep<TransactionRepository> _transactionRepositoryDep = dep(
    () => TransactionRepositoryMock(),
  );

  late final Dep<AccountRepository> _accountRepositoryDep = dep(
    () => AccountRepositoryMock(),
  );

  late final AsyncDep<RepositoryService<Iterable<Account>>>
  _accountsServiceDep = asyncDep(
    () => RepositoryService(
      onFetch: () => _accountRepositoryDep.get.getAllAccounts(),
      refreshInterval: const Duration(seconds: 1),
    ),
  );

  late final AsyncDep<RepositoryService<Iterable<Category>>>
  _categoriesServiceDep = asyncDep(
    () => RepositoryService(
      onFetch: () => _categoryRepositoryDep.get.getAllCategories(),
      refreshInterval: const Duration(seconds: 1),
    ),
  );

  late final AsyncDep<RepositoryService<Iterable<Transaction>>>
  _transactionsServiceDep = asyncDep(
    () => RepositoryService(
      onFetch: () => _transactionRepositoryDep.get.getAllTransactions(),
      refreshInterval: const Duration(seconds: 1),
    ),
  );

  @override
  late final Dep<ValueStream<Iterable<Account>?>> accountsDep = dep(
    () => _accountsServiceDep.get.value,
  );

  @override
  late final Dep<ValueStream<Iterable<Category>?>> categoriesDep = dep(
    () => _categoriesServiceDep.get.value,
  );

  @override
  late final Dep<ValueStream<Iterable<Transaction>?>> transactionsDep = dep(
    () => _transactionsServiceDep.get.value,
  );

  late final historyPageModule = HistoryPageModule(this);

  @override
  List<Set<AsyncDep>> get initializeQueue => [
    {_accountsServiceDep, _categoriesServiceDep, _transactionsServiceDep},
    {historyPageModule.filterManagerDep},
  ];
}

class AppScopeHolder extends ScopeHolder<AppContainer> {
  final GlobalKey globalKey;

  AppScopeHolder({required this.globalKey});

  @override
  AppContainer createContainer() => AppContainer(globalKey: globalKey);
}
