import 'package:flutter/material.dart';

import 'account_home_page/account_home_page.dart';
import 'account_navigation.dart';
import 'edit_page/edit_page.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) => AccountNavigationScope(
    pageBuilder:
        (state) => switch (state) {
          AccountNavigationState.home => AccountHomePage(),
          AccountNavigationState.edit => AccountEditPage(),
        },
  );
}
