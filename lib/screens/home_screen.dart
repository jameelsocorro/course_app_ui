import 'package:course_app_ui/app_color.dart';
import 'package:course_app_ui/screens/course_detail_screen.dart';
import 'package:course_app_ui/screens/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                fontWeight: FontWeight.w900,
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

    final categoryHeader = Container(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Categories',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textColor[900],
              fontWeight: FontWeight.w900,
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

    final categoryCards = SliverStaggeredGrid.countBuilder(
      mainAxisSpacing: 16,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      itemCount: categories.length,
      staggeredTileBuilder: (int index) =>
          StaggeredTile.extent(1, index == 1 || index == 4 ? 250 : 200),
      itemBuilder: (BuildContext context, int index) {
        final Map<String, Object> item = categories[index];
        final Map<String, Object> image = item['image'];
        final Map<String, Object> thumnail = image['thumbnail'];

        final background = Positioned(
          top: thumnail['top'],
          bottom: thumnail['bottom'],
          left: thumnail['left'],
          right: thumnail['right'],
          child: Hero(
            tag: item['tag'],
            child: Image.asset(
              image['src'],
              fit: BoxFit.cover,
            ),
          ),
        );

        final cardContent = Container(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item['category'],
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: AppColors.textColor[900],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  '${item['totalCourses']} Courses',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor[400],
                  ),
                ),
              ),
            ],
          ),
        );

        return Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.cardColor[image['colorIndex']],
              borderRadius: BorderRadius.circular(16),
            ),
            margin: EdgeInsets.only(
              right: index.isOdd ? 16 : 0,
              left: index.isEven ? 16 : 0,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CourseDetailScreen(
                        tag: item['tag'],
                        image: image,
                        backgroundColor:
                            AppColors.cardColor[image['colorIndex']],
                      ),
                    ),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    background,
                    cardContent,
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );

    final customScrollView = Expanded(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 108,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: subHeader,
            ),
          ),
          SliverSafeArea(
            sliver: SliverAppBar(
              backgroundColor: Colors.white,
              titleSpacing: 0,
              pinned: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(72),
                child: Column(
                  children: <Widget>[
                    searchInput,
                    categoryHeader,
                  ],
                ),
              ),
            ),
          ),
          categoryCards,
        ],
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
          customScrollView,
        ],
      ),
    );
  }
}
