import 'package:rxdart/rxdart.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../../../scope/scope.dart';
import 'add_page_manager.dart';
import 'state.dart';

abstract interface class AddPageScope implements Scope {
  int get transactionId;
  bool get income;

  Dep<BehaviorSubject<AddPageState>> get stateHolderDep;
  Dep<AddPageManager> get managerDep;
}

class AddPageContainer
    extends
        ChildDataScopeContainer<
          AppContainer,
          ({int transactionId, bool income})
        >
    implements AddPageScope {
  AddPageContainer({required super.parent, required super.data});

  @override
  int get transactionId => data.transactionId;

  @override
  late final AsyncDep<BehaviorSubject<AddPageState>> stateHolderDep =
      rawAsyncDep(
        () => BehaviorSubject<AddPageState>(),
        init: (dep) async {},
        dispose: (dep) => dep.close(),
      );

  @override
  late final AsyncDep<AddPageManager> managerDep = asyncDep(
    () => AddPageManager(
      transactionRepository: parent.transactions.repositoryDep.get,
      accountRepository: parent.accounts.repositoryDep.get,
      categoryRepository: parent.categories.repositoryDep.get,
      stateHolder: stateHolderDep.get,
      transactionId: transactionId,
      income: income,
      close: () => parent.overviewAddPageScopeHolder.drop(),
    ),
  );

  @override
  List<Set<AsyncDep>> get initializeQueue => [
    {stateHolderDep},
    {managerDep},
  ];

  @override
  bool get income => data.income;
}

class AddPageScopeHolder
    extends
        ChildDataScopeHolder<
          AddPageContainer,
          AppContainer,
          ({int transactionId, bool income})
        > {
  AddPageScopeHolder(super.parent);

  @override
  AddPageContainer createContainer(
    AppContainer parent,
    ({int transactionId, bool income}) data,
  ) => AddPageContainer(parent: parent, data: data);

  static const int _newTransactionId = 0;

  Future<void> addNew({required bool income}) =>
      create((transactionId: _newTransactionId, income: income));

  Future<void> edit({required bool income, required int transactionId}) =>
      create((transactionId: transactionId, income: income));
}
