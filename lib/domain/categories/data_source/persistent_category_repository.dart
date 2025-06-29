import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:models/models.dart' as models;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:repository/repositories.dart';

part 'persistent_category_repository.g.dart';

// Categories table
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get emoji => text().withLength(min: 1, max: 10)();
  BoolColumn get isIncome => boolean()();
}

// Drift database
@DriftDatabase(tables: [Categories])
class CategoryDatabase extends _$CategoryDatabase {
  CategoryDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static LazyDatabase _openConnection() => LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'categories.sqlite'));
    return NativeDatabase(file);
  });
}

// Persistent implementation of CategoryRepository
class PersistentCategoryRepository implements CategoryRepository {
  final CategoryDatabase _database;

  PersistentCategoryRepository(this._database);

  @override
  Future<List<models.Category>> getAllCategories() async {
    final results = await _database.select(_database.categories).get();
    return results.map(_mapToCategory).toList();
  }

  @override
  Future<List<models.Category>> getIncomeCategories() async {
    final results =
        await (_database.select(_database.categories)
          ..where((c) => c.isIncome.equals(true))).get();
    return results.map(_mapToCategory).toList();
  }

  @override
  Future<List<models.Category>> getExpenseCategories() async {
    final results =
        await (_database.select(_database.categories)
          ..where((c) => c.isIncome.equals(false))).get();
    return results.map(_mapToCategory).toList();
  }

  models.Category _mapToCategory(Category data) => models.Category(
    id: data.id,
    name: data.name,
    emoji: data.emoji,
    isIncome: data.isIncome,
  );

  Future<void> close() => _database.close();
}
