import 'package:course_app_ui/utils/app_color.dart';
import 'package:course_app_ui/screens/course_detail_screen.dart';
import 'package:course_app_ui/data/mock_data.dart';
import 'package:course_app_ui/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  _buildHeader() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {},
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
    );
  }

  _buildSubHeader(context) {
    return Container(
      margin: EdgeInsets.symmetric(
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
              style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: 28,
                  ),
            ),
          ),
          Text(
            'Find a course you want to learn',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColor.textColor[500],
            ),
          ),
        ],
      ),
    );
  }

  _buildCategoryHeader(context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Categories',
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 18,
                ),
          ),
          InkWell(
            child: Text(
              'See All',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildContent() {
    final categoryCards = SliverStaggeredGrid.countBuilder(
      mainAxisSpacing: 16,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      itemCount: categories.length,
      staggeredTileBuilder: (int index) =>
          StaggeredTile.extent(1, index == 1 || index == 4 ? 250 : 200),
      itemBuilder: (BuildContext context, int index) {
        final category = categories[index];

        final background = Positioned(
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

        final cardContent = Container(
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

        return Container(
          decoration: BoxDecoration(
            color: category.image.backgroundColor,
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
                      categoryDetail: categoryDetails[category.tag],
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
        );
      },
    );

    return Expanded(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 108,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: _buildSubHeader(context),
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
                    SearchInput(),
                    _buildCategoryHeader(context),
                  ],
                ),
              ),
            ),
          ),
          categoryCards,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
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
          _buildHeader(),
          _buildContent(),
        ],
      ),
    );
  }
}
