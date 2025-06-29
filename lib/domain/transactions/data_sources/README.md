# Персистентная реализация TransactionRepository с Drift

Эта реализация предоставляет персистентное хранилище для транзакций, используя Drift ORM для Flutter.

## Особенности

- **Drift ORM**: Использует современную типобезопасную ORM для Flutter/Dart
- **SQLite**: Локальное хранилище данных в SQLite базе данных
- **Type Converters**: Автоматическое преобразование типа `Money` в строку для хранения
- **Полная реализация**: Поддерживает все методы интерфейса `TransactionRepository`

## Структура базы данных

### Таблица `transactions`

| Поле | Тип | Описание |
|------|-----|----------|
| `id` | INTEGER | Первичный ключ (автоинкремент) |
| `account_id` | INTEGER | ID счета |
| `category_id` | INTEGER | ID категории |
| `amount` | TEXT | Сумма в формате "amount\|currency_code" |
| `transaction_date` | DATETIME | Дата транзакции |
| `comment` | TEXT | Комментарий (необязательно) |
| `created_at` | DATETIME | Дата создания |
| `updated_at` | DATETIME | Дата последнего обновления |

## Использование

```dart
import 'package:models/models.dart';
import 'persistence_data_source.dart';

// Создание базы данных и репозитория
final database = TransactionDatabase();
final repository = PersistentTransactionRepository(database);

try {
  // Создание транзакции
  final transaction = await repository.createTransaction(
    accountId: 1,
    categoryId: 2,
    amount: const Money(amount: '1500', currency: Currency.rub),
    transactionDate: DateTime.now(),
    comment: 'Покупка продуктов',
  );

  // Получение всех транзакций
  final allTransactions = await repository.getAllTransactions();

  // Поиск по ID
  final found = await repository.getTransactionById(transaction.id);

  // Обновление
  final updated = await repository.updateTransaction(
    id: transaction.id,
    comment: 'Обновленный комментарий',
  );

  // Удаление
  await repository.deleteTransaction(transaction.id);

} finally {
  // Обязательно закрыть базу данных
  await repository.close();
}
```

## Конвертер типов Money

Класс `MoneyConverter` автоматически преобразует объекты `Money` в строку для хранения в базе данных в формате `"amount|currency_code"` и обратно при чтении.

## Обработка ошибок

- `NotFoundException`: Выбрасывается при попытке обновить или удалить несуществующую транзакцию
- Другие ошибки базы данных пробрасываются как есть

## Файлы

- `persistence_data_source.dart` - Основная реализация
- `persistence_data_source.g.dart` - Сгенерированный Drift код
- `example_usage.dart` - Пример использования
- `data_sources.dart` - Экспорты модуля

## Зависимости

Убедитесь, что в `pubspec.yaml` добавлены следующие зависимости:

```yaml
dependencies:
  drift: ^2.27.0
  path_provider: ^2.1.4
  path: ^1.9.0

dev_dependencies:
  drift_dev: ^2.27.0
  build_runner: ^2.4.13
```

После добавления зависимостей выполните:

```bash
flutter pub get
dart run build_runner build
``` 