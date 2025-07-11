import 'package:models/models.dart' as models;
import 'package:remote_api/remote_api.dart';
import 'package:repository/repositories.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../core/repository_service/repository_service.dart';
import '../../scope/scope.dart';
import 'data_sources/persistence_data_source.dart';
import 'events/event_store.dart';
import 'sync/sync.dart';

abstract interface class TransactionsScope implements Scope {
  Dep<TransactionRepository> get repositoryDep;
  AsyncDep<RepositoryService<Iterable<models.Transaction>>> get serviceDep;
  Dep<TransactionSyncManager> get syncManagerDep;
  AsyncDep<TransactionEventStoreFactory> get eventStoreFactoryDep;
}

class TransactionsModule extends ScopeModule<AppContainer>
    implements TransactionsScope {
  TransactionsModule(super.container);

  late final Dep<TransactionRepository> persistentRepositoryDep = dep(
    () => PersistentTransactionRepository(TransactionDatabase()),
  );

  late final Dep<TransactionRepository> remoteRepositoryDep = dep(
    () => RemoteTransactionRepository(container.api.getDefaultFinance()),
  );

  @override
  late final AsyncDep<TransactionEventStoreFactory> eventStoreFactoryDep =
      asyncDep(
    () => TransactionEventStoreFactory(),
  );

  @override
  late final syncManagerDep = dep(() => TransactionSyncManager(
        primary: persistentRepositoryDep.get,
        secondary: remoteRepositoryDep.get,
        eventStore: eventStoreFactoryDep.get.store,
      ));

  @override
  late final serviceDep =
      asyncDep<RepositoryService<Iterable<models.Transaction>>>(
    () => RepositoryService(
      onFetch: () async {
        final manager = syncManagerDep.get;
        await manager.initialize();
        return manager.getAllTransactions();
      },
    ),
  );

  @override
  Dep<TransactionRepository> get repositoryDep => dep(() => syncManagerDep.get);
}
