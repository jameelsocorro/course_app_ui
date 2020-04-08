import 'package:course_app_ui/model/category.dart';
import 'package:course_app_ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  final EdgeInsets margin;
  final Function onTap;

  CategoryCard({
    Key key,
    this.category,
    this.margin,
    this.onTap,
  }) : super(key: key);

  _buildBackground() {
    return Positioned(
      top: category.image.offset.top,
      bottom: category.image.offset.bottom,
      left: category.image.offset.left,
      right: category.image.offset.right,
      child: Hero(
        tag: category.tag,
        child: Image.asset(
          category.image.src,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  _buildCardContent() {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            category.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
              color: AppColor.textColor[900],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              '${category.totalTopics} Topics',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: AppColor.textColor[400],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: category.image.backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      margin: this.margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: this.onTap,
          child: Stack(
            children: <Widget>[
              _buildBackground(),
              _buildCardContent(),
            ],
          ),
        ),
      ),
    );
  }
}
