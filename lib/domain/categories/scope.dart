import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:repository_mocks/repository_mocks.dart';
import 'package:yx_scope/yx_scope.dart';

import '../../core/repository_service/repository_service.dart';
import '../../scope/scope.dart';

abstract interface class CategoriesScope implements Scope {
  Dep<CategoryRepository> get repositoryDep;
  AsyncDep<RepositoryService<Iterable<Category>>> get serviceDep;
}

class CategoriesModule extends ScopeModule<AppContainer>
    implements CategoriesScope {
  CategoriesModule(super.container);

  @override
  late final Dep<CategoryRepository> repositoryDep = dep(
    // () => PersistentCategoryRepository(CategoryDatabase()),
    () => CategoryRepositoryMock(),
  );

  @override
  late final AsyncDep<RepositoryService<Iterable<Category>>> serviceDep =
      asyncDep(
        () => RepositoryService(
          onFetch: () => repositoryDep.get.getAllCategories(),
        ),
      );
}
