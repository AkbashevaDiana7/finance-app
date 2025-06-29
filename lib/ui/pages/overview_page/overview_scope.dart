import 'package:yx_scope/yx_scope.dart';

import '../../../scope/scope.dart';

abstract interface class OverviewScope implements Scope {}

class OverviewContainer extends ChildScopeContainer<AppScope>
    implements OverviewScope {
  OverviewContainer({required super.parent});
}
