import 'package:finance_app/ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../account_navigation.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

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
          centerTitle: true,
          title: const Text('Мой счет'),
          leading: IconButton(
            onPressed: () => navigation.pop(),
            icon: const Icon(Icons.close),
          ),
          actions: [
            IconButton(
              onPressed: () => navigation.pop(),
              icon: const Icon(Icons.check),
            ),
          ],
        ),
        body: Column(
          children: [
            Slidable(
              endActionPane: ActionPane(
                motion: const ScrollMotion(),
                extentRatio: 0.17,
                children: [
                  SlidableAction(
                    onPressed: (_) => navigation.pop(),
                    backgroundColor: Color(0xFFFE4A49),
                    foregroundColor: Colors.white,
                    icon: MdiIcons.trashCanOutline,
                  ),
                ],
              ),
              child: PageRow.custom(
                iconText: '👤',
                text: 'Баланс',
                onTap: () {},
                amountWidget: SizedBox(
                  width: 100,
                  height: 10,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    textAlign: TextAlign.end,

                    style: TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
            ),
            ErrorButton(text: 'Удалить счет', onTap: () => navigation.pop()),
          ],
        ),
      ),
    );
  }
}
