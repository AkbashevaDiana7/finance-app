import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
          PageRow.header(
            text: 'Валюта',
            amount: '₽',
            onTap:
                () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder:
                      (BuildContext context) => ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(28),
                        ),
                        child: Wrap(
                          children: [
                            Grabber(),

                            _Row(
                              icon: MdiIcons.currencyRub,
                              text: 'Российский рубль ₽',
                            ),
                            _Row(
                              icon: MdiIcons.currencyUsd,
                              text: 'Американский доллар \$',
                            ),
                            _Row(icon: MdiIcons.currencyEur, text: 'Евро €'),
                            _Row(
                              icon: MdiIcons.cancel,
                              text: 'Отменить',
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                      ),
                ),
          ),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? backgroundColor;

  const _Row({required this.icon, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) => ColoredBox(
    color: backgroundColor ?? Colors.transparent,
    child: Row(children: [Icon(icon), Text(text)]),
  );
}

class Grabber extends StatelessWidget {
  const Grabber({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,
      color: colorScheme.surface,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 8.0),
          width: 32.0,
          height: 4.0,
          decoration: BoxDecoration(
            color: colorScheme.outline,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
