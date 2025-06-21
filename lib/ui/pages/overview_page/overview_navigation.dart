import '../../../core/page_navigation/page_navigation.dart';

enum OverviewNavigationState implements PageNavigationState {
  home,
  add,
  history,
}

class OverviewNavigationScope
    extends BasePageNavigationScope<OverviewNavigationState> {
  OverviewNavigationScope({super.key, required super.pageBuilder})
    : super(initialState: OverviewNavigationState.home);
}
