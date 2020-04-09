import 'package:course_app_ui/utils/app_color.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CoursePricing extends StatelessWidget {
  final double price;
  final double originalPrice;

  CoursePricing({
    this.price,
    this.originalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Text(
            NumberFormat.simpleCurrency(decimalDigits: 0).format(price),
            style: Theme.of(context).textTheme.headline5.copyWith(fontSize: 28),
          ),
        ),
        Text(
          NumberFormat.simpleCurrency(decimalDigits: 0).format(originalPrice),
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.lineThrough,
            color: AppColor.textColor[500],
          ),
        ),
      ],
    );
  }
}
