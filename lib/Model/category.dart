import 'package:flutter/foundation.dart';

class SongCategory {
  int? id;
  String? createdAt;
  String? title;

  SongCategory({this.id, this.createdAt, this.title});

  SongCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    title = json['title'];
  }
}
