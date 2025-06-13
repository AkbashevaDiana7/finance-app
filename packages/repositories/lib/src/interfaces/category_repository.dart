import 'package:models/models.dart';

/// Репозиторий для работы с категориями доходов и расходов
abstract interface class CategoryRepository {
  Future<List<Category>> getAllCategories();

  Future<List<Category>> getIncomeCategories();
  
  Future<List<Category>> getExpenseCategories();
}
