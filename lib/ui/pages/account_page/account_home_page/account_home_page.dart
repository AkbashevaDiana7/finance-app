import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../../scope/scope.dart';
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
          _Amount(),
          PageRow.header(
            text: 'Валюта',
            amount: '₽',
            onTap:
                () => showModalBottomSheet<void>(
                  context: context,
                  isScrollControlled: true,
                  builder: (BuildContext context) => _SelectCurrency(),
                ),
          ),
        ],
      ),
    );
  }
}

class _Amount extends StatefulWidget {
  const _Amount();

  @override
  State<_Amount> createState() => _AmountState();
}

class _AmountState extends State<_Amount> {
  late final TextEditingController _controller;
  late final StreamSubscription<void> _subscription;

  @override
  void initState() {
    super.initState();

    final accounts =
        ScopeProvider.of<AppContainer>(context, listen: false)!.accounts;

    _controller = TextEditingController(
      text: accounts.serviceDep.get.value.value!.first.balance.formattedAmount,
    );

    _subscription = accounts.serviceDep.get.value.listen((value) {
      if (value != null) {
        final text = value.first.balance.formattedAmount;
        _controller.text = text;
        _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: text.length),
        );
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final accounts = ScopeProvider.of<AppContainer>(context)!.accounts;
    final account = accounts.serviceDep.get.value.value!.first;

    return PageRow.custom(
      iconText: '🦆',
      text: 'Баланс',
      amountWidget: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            width: 100,
            child: TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              textAlign: TextAlign.end,
              onChanged:
                  (value) => accounts.repositoryDep.get.updateAccount(
                    id: account.id,
                    name: account.name,
                    balance: account.balance.copyWith(amount: value),
                  ),
              style: TextStyle(
                decoration: TextDecoration.none,
                decorationThickness: 0,
              ),
            ),
          ),
          SizedBox(width: 4),
          Text(
            account.balance.currency.symbol,
            style: TextTheme.of(context).bodyLarge,
          ),
        ],
      ),
      onTap: () {},
      backgroundColor: PageRow.headerBackground,
    );
  }
}

class _SelectCurrency extends StatelessWidget {
  const _SelectCurrency();

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
    child: ColoredBox(
      color: Color(0xffF7F2FA),
      child: Wrap(
        children: [
          Grabber(),

          _Row(icon: MdiIcons.currencyRub, text: 'Российский рубль ₽'),
          _Row(icon: MdiIcons.currencyUsd, text: 'Американский доллар \$'),
          _Row(icon: MdiIcons.currencyEur, text: 'Евро €'),
          _Row(
            icon: MdiIcons.cancel,
            text: 'Отменить',
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
  );
}

class _Row extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  const _Row({
    required this.icon,
    required this.text,
    this.backgroundColor,
    this.onTap,
  });

  static const _padding = EdgeInsets.symmetric(horizontal: 16, vertical: 24);

  @override
  Widget build(BuildContext context) => InkWell(
    onTap: () => onTap?.call(),
    child: Container(
      padding: _padding,
      color: backgroundColor ?? Colors.transparent,
      child: Row(
        children: [
          Icon(icon),
          Text(text, style: TextTheme.of(context).bodyLarge),
        ],
      ),
    ),
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
