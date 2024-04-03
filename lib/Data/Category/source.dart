import 'package:flutter_application_1/Data/Category/repo.dart';
import 'package:flutter_application_1/Data/DataBase.dart';
import 'package:flutter_application_1/Model/category.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ICategoryDataSource {
  Future<List<SongCategory>> getAll();
}

class CategorySupabase implements ICategoryDataSource {
  final supabase = Supabase.instance.client;
  @override
  Future<List<SongCategory>> getAll() async {
    final data = await supabase.from(Database.categoryTableName).select();
    List<SongCategory> categories = [];
    data.forEach((element) {
      categories.add(SongCategory.fromJson(element));
    });
    return categories;
  }
}
