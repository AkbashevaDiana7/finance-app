import 'package:flutter/material.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../widgets/widgets.dart';
import '../account_navigation.dart';

class AccountHomePage extends StatelessWidget {
  const AccountHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final navigation = context.pageNavigation<AccountNavigationState>();

    return Scaffold(
      floatingActionButton: AddItemIconButton(onTap: () {}),

      appBar: AppBar(
        centerTitle: true,
        title: const Text('Мой счет'),
        actions: [
          GestureDetector(
            child: Icon(Icons.edit),
            onTap: () => navigation.goTo(AccountNavigationState.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          PageRow.header(
            iconText: '🦆',
            text: 'Баланс',
            amount: '-670 000 ₽',
            onTap: () {},
          ),
          PageRow.header(text: 'Баланc', amount: '-670 000 ₽', onTap: () {}),
        ],
      ),
    );
  }
}
