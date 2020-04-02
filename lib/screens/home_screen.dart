import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final greyColor = Color(0xFF61688B);

  @override
  Widget build(BuildContext context) {
    final appHeader = Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              child: Image.asset(
                'assets/icons/menu.png',
                height: 10,
                width: 16,
              ),
            ),
            CircleAvatar(
              radius: 16,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
          ],
        ),
      ),
    );

    final title = Text(
      'Hey Alex,',
      style: TextStyle(
        fontSize: 28,        
        fontWeight: FontWeight.bold,
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          brightness: Brightness.light,
        ),
      ),
      body: Column(
        children: <Widget>[
          appHeader,
          title
        ],
      ),
    );
  }
}
