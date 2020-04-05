import 'package:course_app_ui/utils/app_color.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 24),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        controller: TextEditingController(),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 16),
          filled: true,
          fillColor: AppColors.backgroundColor[2],
          border: InputBorder.none,
          hintText: 'Search for anything',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.textColor[300],
          ),
          prefixIcon: Container(
            margin: EdgeInsets.only(left: 8),
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Image.asset(
              'assets/icons/search.png',
              height: 10,
              width: 16,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
