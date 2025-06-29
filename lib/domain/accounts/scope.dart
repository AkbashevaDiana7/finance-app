import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:repository_mocks/repository_mocks.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../core/repository_service/repository_service.dart';
import '../../scope/scope.dart';

abstract interface class AccountsScope implements Scope {
  Dep<AccountRepository> get repositoryDep;
  AsyncDep<RepositoryService<Iterable<Account>>> get serviceDep;
}

class AccountsModule extends ScopeModule<AppContainer>
    implements AccountsScope {
  AccountsModule(super.container);

  @override
  late final Dep<AccountRepository> repositoryDep = dep(
    // () => PersistentAccountRepository(AccountDatabase()),
    () => AccountRepositoryMock(),
    // () => AccountRepositoryMock(),
  );

  @override
  late final AsyncDep<RepositoryService<Iterable<Account>>>
  serviceDep = asyncDep(
    () => RepositoryService(onFetch: () => repositoryDep.get.getAllAccounts()),
  );
}
