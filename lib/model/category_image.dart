import 'package:flutter/material.dart';
import 'package:course_app_ui/model/category_image_offset.dart';

class CategoryImage {
  String src;
  Color backgroundColor;
  CategoryImageOffset offset;

  CategoryImage({String src, Color backgroundColor, CategoryImageOffset offset}) {
    this.src = src;
    this.backgroundColor = backgroundColor;
    this.offset = offset;    
  }
}