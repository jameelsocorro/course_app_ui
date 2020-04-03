import 'package:course_app_ui/app_color.dart';
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

    final subHeader = Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              'Hey Alex,',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Find a course you want to learn',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColors.textColor[500],
            ),
          ),
        ],
      ),
    );

    final searchInput = Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 24),
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

    final categoryHeader = Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          InkWell(
            child: Text(
              'See All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.blue,
              ),
            ),
          ),
        ],
      ),
    );

    final mockData = [
      {
        'category': 'Marketing',
        'totalCourses': 17,
        'backgroundImage': Positioned(
          top: 0,
          bottom: -100,
          left: 0,
          right: 0,          
          child: Image.asset(
            'assets/images/marketing_bg.png',
            fit: BoxFit.cover,
          ),
        ),
      },
      {
        'category': 'UX Design',
        'totalCourses': 25,
        'backgroundImage': Positioned(
          top: 0,
          bottom: -20,
          left: 0,
          right: -75,  
          child: Image.asset(
            'assets/images/ux_design_bg.png',
            fit: BoxFit.cover,
          ),
        ),
      },
      {
        'category': 'Photography',
        'totalCourses': 13,
        'backgroundImage': Positioned(
          top: 0,
          bottom: -80,
          left: 0,
          right: 0,
          child: Image.asset(
            'assets/images/photography_bg.png',
            fit: BoxFit.cover,
          ),
        ),
      },
      {
        'category': 'Business',
        'totalCourses': 20,
        'backgroundImage': Positioned(
          top: 0,
          bottom: -100,
          left: 0,
          right: -75,
          child: Image.asset(
            'assets/images/business_bg.png',
            fit: BoxFit.cover,
          ),
        ),
      },
    ];

    final categoryCards = Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: EdgeInsets.all(16),
        children: List.generate(
          mockData.length,
          (index) {
            return Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Container(
                height: 300,
                width: 40,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Stack(
                    children: <Widget>[mockData[index]['backgroundImage']],
                  ),
                ),
              ),
            );
          },
        ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          appHeader,
          subHeader,
          searchInput,
          categoryHeader,
          categoryCards,
        ],
      ),
    );
  }
}
