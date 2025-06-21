import 'package:flutter/material.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../account_navigation.dart';

class AccountEditPage extends StatelessWidget {
  const AccountEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = context.pageNavigation<AccountNavigationState>();

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) => navigation.pop(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Мой счет'),
          leading: IconButton(
            onPressed: () => navigation.pop(),
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: Material(
          child: InkWell(
            onTap: () => navigation.pop(),
            child: Center(child: const Text('Удалить счет')),
          ),
        ),
      ),
    );
  }
}
