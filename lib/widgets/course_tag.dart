import 'package:course_app_ui/utils/app_color.dart';
import 'package:course_app_ui/utils/tag_clipper.dart';
import 'package:flutter/material.dart';

class CourseTag extends StatelessWidget {
  
  final String label;

  CourseTag({ this.label });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TagClipper(),
      child: Container(
        padding: EdgeInsets.fromLTRB(6, 6, 12, 4),
        color: AppColor.yellow,
        child: Text(
          this.label,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
