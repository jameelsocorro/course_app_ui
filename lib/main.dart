import 'package:course_app_ui/app_color.dart';
import 'package:course_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(            
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Avenir',
              bodyColor: AppColors.textColor[900],
            ),
      ),
      home: HomeScreen(),
    );
  }
}
