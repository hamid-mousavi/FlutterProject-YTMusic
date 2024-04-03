import 'package:flutter_application_1/Data/Category/source.dart';
import 'package:flutter_application_1/Model/category.dart';

final categoryRepository = CategoryRepository(dataSource: CategorySupabase());

abstract class ICategoryRepository {
  Future<List<SongCategory>> getAll();
}

class CategoryRepository implements ICategoryRepository {
  final CategorySupabase dataSource;

  CategoryRepository({required this.dataSource});
  @override
  Future<List<SongCategory>> getAll() {
    return dataSource.getAll();
  }
}
