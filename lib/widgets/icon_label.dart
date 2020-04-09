import 'package:course_app_ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class IconLabel extends StatelessWidget {

  final String src;
  final String label;  

  IconLabel({
    this.src,
    this.label,    
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          this.src,
          width: 14,
          height: 14,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8, right: 16),
          child: Text(
            this.label,
            style: TextStyle(
              fontSize: 12,
              color: AppColor.textColor[500],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
