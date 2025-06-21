import 'package:models/models.dart';

extension TransactionsExtension on Iterable<Transaction> {
  Map<int, List<Transaction>> groupByCategoryId() =>
      fold(<int, List<Transaction>>{}, (prev, t) {
        prev.putIfAbsent(t.categoryId, () => []).add(t);

        return prev;
      });

  Money get amount => fold(
    Money.fromDouble(0.0, Currency.rub),
    (prev, t) => prev.copyWith(
      amount: (prev.doubleValue + t.amount.doubleValue).toInt().toString(),
    ),
  );
}
