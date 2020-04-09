import 'package:course_app_ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class CourseItem extends StatelessWidget {
  final String counter;
  final String duration;
  final String title;
  final double iconOpacity;

  CourseItem({
    this.counter,
    this.duration,
    this.title,
    this.iconOpacity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: Row(
        children: <Widget>[
          Text(
            counter,
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w900,
              color: AppColor.textColor[200],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(bottom: 8),
                    child: Text(
                      duration,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColor.textColor[300],
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
          Opacity(
            opacity: iconOpacity,
            child: Container(
              height: 40,
              width: 40,
              child: FlatButton(
                onPressed: () {},
                color: AppColor.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(
                  'assets/icons/play.png',
                  height: 14,
                  width: 10,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
