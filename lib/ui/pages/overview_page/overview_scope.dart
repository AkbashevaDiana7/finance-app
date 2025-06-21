import 'package:finance_app/scope/scope.dart';
import 'package:yx_scope/yx_scope.dart';

abstract interface class OverviewScope implements Scope {}

class OverviewContainer extends ChildScopeContainer<AppScope>
    implements OverviewScope {
  OverviewContainer({required super.parent});
}
