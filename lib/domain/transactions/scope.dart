import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:repository_mocks/repository_mocks.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../core/repository_service/repository_service.dart';
import '../../scope/scope.dart';
import 'data_sources/persistence_data_source.dart'
    show TransactionDatabase, PersistentTransactionRepository;

abstract interface class TransactionsScope implements Scope {
  Dep<TransactionRepository> get repositoryDep;
  AsyncDep<RepositoryService<Iterable<Transaction>>> get serviceDep;
}

class TransactionsModule extends ScopeModule<AppContainer>
    implements TransactionsScope {
  TransactionsModule(super.container);

  static const _debug = true;

  @override
  late final Dep<TransactionRepository> repositoryDep = dep(
    () =>
        _debug
            ? TransactionRepositoryMock()
            : PersistentTransactionRepository(TransactionDatabase()),
  );

  @override
  late final AsyncDep<RepositoryService<Iterable<Transaction>>> serviceDep =
      asyncDep(
        () => RepositoryService(
          onFetch: () => repositoryDep.get.getAllTransactions(),
        ),
      );
}
