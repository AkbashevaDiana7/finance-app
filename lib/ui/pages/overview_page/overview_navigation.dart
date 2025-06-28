import '../../../core/page_navigation/page_navigation.dart';

enum OverviewNavigationState implements PageNavigationState {
  home,
  add,
  history,
  analytics,
}

class OverviewNavigationScope
    extends BasePageNavigationScope<OverviewNavigationState> {
  OverviewNavigationScope({super.key, required super.pageBuilder})
    : super(initialState: OverviewNavigationState.home);
}
