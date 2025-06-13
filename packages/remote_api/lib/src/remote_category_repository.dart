import 'package:api/api.dart' as api;
import 'package:models/models.dart';
import 'package:repository/repositories.dart';
import 'package:dio/dio.dart';
import 'api_mappers.dart';

/// Remote реализация CategoryRepository
class RemoteCategoryRepository implements CategoryRepository {
  final api.DefaultFinance _api;

  const RemoteCategoryRepository(this._api);

  @override
  Future<List<Category>> getAllCategories() async {
    try {
      final response = await _api.categoriesGet();
      if (response.data != null) {
        return ApiMappers.categoriesFromApi(response.data!);
      }
      return [];
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<List<Category>> getIncomeCategories() async {
    try {
      final response = await _api.categoriesTypeIsIncomeGet(isIncome: true);
      if (response.data != null) {
        return ApiMappers.categoriesFromApi(response.data!);
      }
      return [];
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  @override
  Future<List<Category>> getExpenseCategories() async {
    try {
      final response = await _api.categoriesTypeIsIncomeGet(isIncome: false);
      if (response.data != null) {
        return ApiMappers.categoriesFromApi(response.data!);
      }
      return [];
    } on DioException catch (e) {
      throw _handleDioException(e);
    }
  }

  static RepositoryException _handleDioException(DioException e) =>
      ApiMappers.handleDioException(
        e,
        notFoundMessage: 'Категории не найдены',
        validationMessage: 'Некорректные параметры запроса',
      );
}
