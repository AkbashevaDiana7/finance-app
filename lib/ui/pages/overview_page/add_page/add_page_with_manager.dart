// import 'package:flutter/material.dart';
// import 'package:models/models.dart';
// import 'package:yx_scope_flutter/yx_scope_flutter.dart';

// import '../../../../scope/scope.dart';
// import 'add_page_manager.dart';
// import 'add_page_scope.dart';
// import 'state.dart';

// /// Страница добавления/редактирования транзакции с использованием менеджера
// class AddPageWithManager extends StatelessWidget {
//   final bool income;
//   final int? transactionId;

//   const AddPageWithManager({
//     super.key,
//     required this.income,
//     this.transactionId,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final appScope = ScopeProvider.of<AppContainer>(context)!;

//     // Создаем модуль для добавления или редактирования
//     final addPageModule =
//         transactionId != null
//             ? appScope.createAddPageContainerForEdit(transactionId!)
//             : appScope.addPageModule;

//     return ScopeProvider<AddPageContainer>(
//       holder: addPageModule,
//       child: Builder(
//         builder:
//             (context) => FutureBuilder(
//               future: _initializeScope(context),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return const Scaffold(
//                     body: Center(child: CircularProgressIndicator()),
//                   );
//                 }

//                 if (snapshot.hasError) {
//                   return Scaffold(
//                     appBar: AppBar(
//                       title: Text(
//                         transactionId != null ? 'Редактировать' : 'Добавить',
//                       ),
//                     ),
//                     body: Center(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Icon(Icons.error, size: 64, color: Colors.red),
//                           const SizedBox(height: 16),
//                           Text('Ошибка: ${snapshot.error}'),
//                           const SizedBox(height: 16),
//                           ElevatedButton(
//                             onPressed: () => Navigator.of(context).pop(),
//                             child: const Text('Назад'),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 }

//                 return _AddPageContent(
//                   income: income,
//                   isEdit: transactionId != null,
//                 );
//               },
//             ),
//       ),
//     );
//   }

//   Future<void> _initializeScope(BuildContext context) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;

//     // Инициализируем зависимости
//     await addPageModule.defaultStateDep.get;
//     await addPageModule.stateHolderDep.get;
//     await addPageModule.managerDep.get;
//   }
// }

// class _AddPageContent extends StatelessWidget {
//   final bool income;
//   final bool isEdit;

//   const _AddPageContent({required this.income, required this.isEdit});

//   @override
//   Widget build(BuildContext context) {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(isEdit ? 'Редактировать' : 'Добавить'),
//         actions: [
//           if (isEdit) ...[
//             IconButton(
//               icon: const Icon(Icons.delete),
//               onPressed: () => _showDeleteDialog(context),
//             ),
//           ],
//           IconButton(
//             icon: const Icon(Icons.save),
//             onPressed: () => _saveTransaction(context),
//           ),
//         ],
//       ),
//       body: FutureBuilder<BehaviorSubject<AddPageState>>(
//         future: addPageModule.stateHolderDep.get,
//         builder: (context, snapshot) {
//           if (!snapshot.hasData) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           final stateHolder = snapshot.data!;

//           return StreamBuilder<AddPageState>(
//             stream: stateHolder,
//             initialData: stateHolder.value,
//             builder: (context, stateSnapshot) {
//               if (!stateSnapshot.hasData) {
//                 return const Center(child: CircularProgressIndicator());
//               }

//               final state = stateSnapshot.data!;

//               return _TransactionForm(state: state, income: income);
//             },
//           );
//         },
//       ),
//     );
//   }

//   Future<void> _saveTransaction(BuildContext context) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;

//     try {
//       final manager = await addPageModule.managerDep.get;
//       final savedTransaction = await manager.saveTransaction();

//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text(
//               isEdit ? 'Транзакция обновлена' : 'Транзакция создана',
//             ),
//             backgroundColor: Colors.green,
//           ),
//         );
//         Navigator.of(context).pop(savedTransaction);
//       }
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Ошибка сохранения: $e'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   Future<void> _showDeleteDialog(BuildContext context) async {
//     final confirmed = await showDialog<bool>(
//       context: context,
//       builder:
//           (context) => AlertDialog(
//             title: const Text('Удалить транзакцию'),
//             content: const Text(
//               'Вы уверены, что хотите удалить эту транзакцию?',
//             ),
//             actions: [
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(false),
//                 child: const Text('Отмена'),
//               ),
//               TextButton(
//                 onPressed: () => Navigator.of(context).pop(true),
//                 style: TextButton.styleFrom(foregroundColor: Colors.red),
//                 child: const Text('Удалить'),
//               ),
//             ],
//           ),
//     );

//     if (confirmed == true && context.mounted) {
//       await _deleteTransaction(context);
//     }
//   }

//   Future<void> _deleteTransaction(BuildContext context) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;

//     try {
//       final manager = await addPageModule.managerDep.get;
//       await manager.deleteTransaction();

//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Транзакция удалена'),
//             backgroundColor: Colors.green,
//           ),
//         );
//         Navigator.of(
//           context,
//         ).pop(true); // true означает, что транзакция была удалена
//       }
//     } catch (e) {
//       if (context.mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Ошибка удаления: $e'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }
// }

// class _TransactionForm extends StatelessWidget {
//   final AddPageState state;
//   final bool income;

//   const _TransactionForm({required this.state, required this.income});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           // Поле суммы
//           TextFormField(
//             initialValue: state.transaction.amount.amount,
//             decoration: const InputDecoration(
//               labelText: 'Сумма',
//               prefixIcon: Icon(Icons.attach_money),
//             ),
//             keyboardType: TextInputType.number,
//             onChanged: (value) => _updateAmount(context, value),
//           ),
//           const SizedBox(height: 16),

//           // Поле счета
//           DropdownButtonFormField<Account>(
//             value: state.account,
//             decoration: const InputDecoration(
//               labelText: 'Счет',
//               prefixIcon: Icon(Icons.account_balance_wallet),
//             ),
//             items:
//                 [state.account]
//                     .map(
//                       (account) => DropdownMenuItem(
//                         value: account,
//                         child: Text(account.name),
//                       ),
//                     )
//                     .toList(),
//             onChanged: (account) {
//               if (account != null) {
//                 _updateAccount(context, account);
//               }
//             },
//           ),
//           const SizedBox(height: 16),

//           // Поле категории
//           DropdownButtonFormField<Category>(
//             value: state.category,
//             decoration: const InputDecoration(
//               labelText: 'Категория',
//               prefixIcon: Icon(Icons.category),
//             ),
//             items:
//                 [state.category]
//                     .map(
//                       (category) => DropdownMenuItem(
//                         value: category,
//                         child: Row(
//                           children: [
//                             Text(category.emoji),
//                             const SizedBox(width: 8),
//                             Text(category.name),
//                           ],
//                         ),
//                       ),
//                     )
//                     .toList(),
//             onChanged: (category) {
//               if (category != null) {
//                 _updateCategory(context, category);
//               }
//             },
//           ),
//           const SizedBox(height: 16),

//           // Поле даты
//           ListTile(
//             leading: const Icon(Icons.calendar_today),
//             title: const Text('Дата'),
//             subtitle: Text(
//               '${state.transaction.transactionDate.day}.${state.transaction.transactionDate.month}.${state.transaction.transactionDate.year}',
//             ),
//             onTap: () => _selectDate(context),
//           ),
//           const SizedBox(height: 16),

//           // Поле комментария
//           TextFormField(
//             initialValue: state.transaction.comment ?? '',
//             decoration: const InputDecoration(
//               labelText: 'Комментарий (необязательно)',
//               prefixIcon: Icon(Icons.comment),
//             ),
//             maxLines: 3,
//             onChanged:
//                 (value) =>
//                     _updateComment(context, value.isEmpty ? null : value),
//           ),
//         ],
//       ),
//     );
//   }

//   Future<void> _updateAmount(BuildContext context, String value) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;
//     final manager = await addPageModule.managerDep.get;

//     try {
//       final amount = Money(amount: value, currency: Currency.rub);
//       manager.updateAmount(amount);
//     } catch (e) {
//       // Игнорируем ошибки парсинга при вводе
//     }
//   }

//   Future<void> _updateAccount(BuildContext context, Account account) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;
//     final manager = await addPageModule.managerDep.get;
//     manager.updateAccount(account);
//   }

//   Future<void> _updateCategory(BuildContext context, Category category) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;
//     final manager = await addPageModule.managerDep.get;
//     manager.updateCategory(category);
//   }

//   Future<void> _updateComment(BuildContext context, String? comment) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;
//     final manager = await addPageModule.managerDep.get;
//     manager.updateComment(comment);
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     final addPageModule = ScopeProvider.of<AddPageContainer>(context)!;
//     final manager = await addPageModule.managerDep.get;

//     final selectedDate = await showDatePicker(
//       context: context,
//       initialDate: state.transaction.transactionDate,
//       firstDate: DateTime(2000),
//       lastDate: DateTime.now().add(const Duration(days: 365)),
//     );

//     if (selectedDate != null) {
//       manager.updateTransactionDate(selectedDate);
//     }
//   }
// }
