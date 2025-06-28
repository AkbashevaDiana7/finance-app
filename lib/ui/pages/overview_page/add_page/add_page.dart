import 'package:flutter/material.dart';
import 'package:yx_scope_flutter/yx_scope_flutter.dart';

import '../../../../core/page_navigation/page_navigation.dart';
import '../../../../core/utils/datetime_extension.dart';
import '../../../../scope/scope.dart';
import '../../../widgets/widgets.dart';
import '../overview_navigation.dart';
import 'add_page_scope.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key, required bool income});

  @override
  Widget build(BuildContext context) {
    final holder =
        ScopeProvider.of<AppContainer>(context)!.overviewAddPageScopeHolder;

    if (holder.scope == null) {
      return const SizedBox.shrink();
    }

    final manager = holder.scope!.managerDep.get;
    final navigation = context.pageNavigation<OverviewNavigationState>();

    return ScopeProvider(
      holder: holder,
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          manager.discardChanges();
          navigation.pop();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Мои расходы'),
            leading: IconButton(
              onPressed: () {
                manager.discardChanges();
                navigation.pop();
              },
              icon: const Icon(Icons.close),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  manager.saveTransaction();
                  navigation.pop();
                },
                icon: const Icon(Icons.check),
              ),
            ],
          ),
          body: _Form(),
        ),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  late final TextEditingController _commentController;
  late final TextEditingController _amountController;

  @override
  void initState() {
    super.initState();
    final stateHolder =
        ScopeProvider.of<AddPageContainer>(
          context,
          listen: false,
        )!.stateHolderDep.get;

    stateHolder.listen((data) {
      final text = data.transaction.amount.formattedAmount;

      _amountController.text = text;
      _amountController.selection = TextSelection.fromPosition(
        TextPosition(offset: text.length),
      );
    });

    _commentController = TextEditingController(
      text: stateHolder.value.transaction.comment,
    );
    _amountController = TextEditingController(
      text: stateHolder.value.transaction.amount.amount,
    );
  }

  @override
  void dispose() {
    _commentController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final scope = ScopeProvider.of<AddPageContainer>(context)!;
    final stateHolder = scope.stateHolderDep.get;
    final manager = scope.managerDep.get;
    final navigation = context.pageNavigation<OverviewNavigationState>();

    return StreamBuilder(
      stream: stateHolder,
      initialData: stateHolder.value,
      builder: (context, snapshot) {
        final data = snapshot.requireData;

        return ListView(
          children: [
            PageRow.item(amount: data.account.name, text: 'Счет', onTap: () {}),
            PageRow.item(
              amount: data.category.name,
              text: 'Статья',
              onTap: () {},
            ),
            PageRow.custom(
              text: 'Сумма',
              amountWidget: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 100),
                      child: TextField(
                        controller: _amountController,
                        onChanged:
                            (value) => stateHolder.add(
                              data.copyWith.transaction.amount(amount: value),
                            ),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: 'Сумма',
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          decorationThickness: 0,
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(data.transaction.amount.currency.symbol),
                  ],
                ),
              ),
            ),
            PageRow.item(
              amount: data.transaction.transactionDate.formattedDate,
              text: 'Дата',
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1970, 1, 1),
                  lastDate: DateTime.now(),
                  locale: const Locale('ru', 'RU'),
                );

                if (date != null) {
                  stateHolder.add(
                    data.copyWith.transaction(
                      transactionDate: data.transaction.transactionDate
                          .copyWith(
                            year: date.year,
                            month: date.month,
                            day: date.day,
                          ),
                    ),
                  );
                }
              },
            ),
            PageRow.item(
              amount: data.transaction.transactionDate.formattedTime,
              text: 'Время',
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.fromDateTime(
                    data.transaction.transactionDate,
                  ),
                );

                if (time != null) {
                  stateHolder.add(
                    data.copyWith(
                      transaction: data.transaction.copyWith(
                        transactionDate: data.transaction.transactionDate
                            .copyWith(hour: time.hour, minute: time.minute),
                      ),
                    ),
                  );
                }
              },
            ),
            PageRow.custom(
              textWidget: SizedBox(
                height: 70,
                width: 200,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    controller: _commentController,
                    onChanged: (value) {
                      stateHolder.add(
                        data.copyWith.transaction(comment: value),
                      );
                    },
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Комментарий',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),

                    style: TextStyle(
                      decoration: TextDecoration.none,
                      decorationThickness: 0,
                    ),
                  ),
                ),
              ),
            ),
            ErrorButton(
              text: 'Удалить расход',
              onTap: () {
                manager.deleteTransaction();
                navigation.pop();
              },
            ),
          ],
        );
      },
    );
  }
}
