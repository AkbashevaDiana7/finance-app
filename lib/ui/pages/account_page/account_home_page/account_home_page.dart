import 'package:flutter/material.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../account_navigation.dart';

class AccountHomePage extends StatelessWidget {
  const AccountHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = context.pageNavigation<AccountNavigationState>();

    return Scaffold(
      appBar: AppBar(title: const Text('Мой счет')),
      body: Material(
        child: InkWell(
          onTap: () => navigation.goTo(AccountNavigationState.edit),
          child: Center(child: const Text('Edit Account')),
        ),
      ),
    );
  }
}
