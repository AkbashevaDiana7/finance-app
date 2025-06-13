import 'package:freezed_annotation/freezed_annotation.dart';

part 'money.freezed.dart';

@freezed
class Money with _$Money {
  const factory Money({
    required String amount,
    required Currency currency,
  }) = _Money;

  const Money._();

  factory Money.fromString(String amount, String currencyCode) {
    return Money(
      amount: amount,
      currency: Currency.fromCode(currencyCode),
    );
  }

  double get doubleValue => double.tryParse(amount) ?? 0.0;

  bool get isZero => doubleValue == 0.0;

  bool get isPositive => doubleValue > 0.0;

  bool get isNegative => doubleValue < 0.0;
}

@freezed
class Currency with _$Currency {
  const factory Currency({
    required String code,
    required String symbol,
    required String name,
  }) = _Currency;

  const Currency._();

  /// Создает валюту по коду
  factory Currency.fromCode(String code) {
    switch (code.toUpperCase()) {
      case 'RUB':
        return rub;
      case 'USD':
        return usd;
      case 'EUR':
        return const Currency(
          code: 'EUR',
          symbol: '€',
          name: 'Евро',
        );
      default:
        return eur;
    }
  }

  /// Популярные валюты
  static const Currency rub = Currency(
    code: 'RUB',
    symbol: '₽',
    name: 'Российский рубль',
  );

  static const Currency usd = Currency(
    code: 'USD',
    symbol: '\$',
    name: 'Доллар США',
  );

  static const Currency eur = Currency(
    code: 'EUR',
    symbol: '€',
    name: 'Евро',
  );
}
