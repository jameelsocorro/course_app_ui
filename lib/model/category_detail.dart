import 'package:course_app_ui/model/category_content.dart';
import 'package:course_app_ui/model/category_image.dart';

class CategoryDetail {
  String tag;
  String title;
  int students;
  double rating;
  double price;
  double originalPrice;
  bool bestSeller;
  CategoryImage image;
  List<CategoryContent> contents;

  CategoryDetail({
    String tag,
    String title,
    int students,
    double rating,
    double price,
    double originalPrice,
    bool bestSeller,
    CategoryImage image,
    List<CategoryContent> contents,
  }) {
    this.tag = tag;
    this.title = title;
    this.students = students;
    this.rating = rating;
    this.price = price;
    this.originalPrice = originalPrice;
    this.bestSeller = bestSeller;
    this.image = image;
    this.contents = contents;
  }
}
