import 'package:course_app_ui/model/category_image.dart';

class Category {
  String tag;
  String title;
  int totalTopics;
  CategoryImage image;

  Category({String tag, String title, int totalTopics, CategoryImage image}) {
    this.tag = tag;
    this.title = title;
    this.totalTopics = totalTopics;
    this.image = image;
  }
}