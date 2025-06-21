import 'package:models/models.dart';
import 'package:repository/repositories.dart';

class CategoryRepositoryMock implements CategoryRepository {
  final List<Category> _categories = [
    Category(id: 1, name: 'Зарплата', emoji: '💰', isIncome: true),
    Category(id: 2, name: 'Подарок', emoji: '🎁', isIncome: true),
    Category(id: 3, name: 'Подработка', emoji: '💼', isIncome: true),
    Category(id: 4, name: 'Еда', emoji: '🍔', isIncome: false),
    Category(id: 5, name: 'Транспорт', emoji: '🚗', isIncome: false),
    Category(id: 6, name: 'Аренда', emoji: '🏠', isIncome: false),
    Category(id: 7, name: 'Коммунальные', emoji: '💡', isIncome: false),
    Category(id: 8, name: 'Телефон', emoji: '📱', isIncome: false),
    Category(id: 9, name: 'Интернет', emoji: '🌐', isIncome: false),
    Category(id: 10, name: 'Продукты', emoji: '🍎', isIncome: false),
    Category(id: 11, name: 'Одежда', emoji: '👔', isIncome: false),
    Category(id: 12, name: 'Здоровье', emoji: '🏥', isIncome: false),
  ];

  @override
  Future<List<Category>> getAllCategories() async {
    return List<Category>.from(_categories);
  }

  @override
  Future<List<Category>> getIncomeCategories() async {
    return _categories.where((c) => c.isIncome).toList();
  }

  @override
  Future<List<Category>> getExpenseCategories() async {
    return _categories.where((c) => !c.isIncome).toList();
  }
}
