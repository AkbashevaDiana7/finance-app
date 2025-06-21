import 'package:finance_app/core/page_navigation/page_navigation.dart';

enum AccountNavigationState implements PageNavigationState { home, edit }

class AccountNavigationScope
    extends BasePageNavigationScope<AccountNavigationState> {
  AccountNavigationScope({super.key, required super.pageBuilder})
    : super(initialState: AccountNavigationState.home);
}
