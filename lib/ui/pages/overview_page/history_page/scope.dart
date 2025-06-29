import 'package:yx_scope/yx_scope.dart';

import '../../../../scope/scope.dart';
import 'data_provider.dart';
import 'filter.dart';

abstract interface class HistoryPageScope implements Scope {
  AsyncDep<HistoryPageFilterManager> get filterManagerDep;
  Dep<HistoryPageDataProvider> get dataProviderDep;
}

class HistoryPageModule extends ScopeModule<AppContainer>
    implements HistoryPageScope {
  HistoryPageModule(super.container);

  @override
  late final AsyncDep<HistoryPageFilterManager> filterManagerDep = asyncDep(
    () => HistoryPageFilterManager(),
  );

  @override
  late final Dep<HistoryPageDataProvider> dataProviderDep = dep(
    () => HistoryPageDataProvider(
      filterManager: filterManagerDep.get,
      transactions: container.transactions.serviceDep.get.value,
      categories: container.categories.serviceDep.get.value,
    ),
  );
}
