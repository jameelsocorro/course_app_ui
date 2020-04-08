import 'package:course_app_ui/screens/category_detail_screen.dart';
import 'package:course_app_ui/utils/app_color.dart';

import 'package:course_app_ui/data/mock_data.dart';
import 'package:course_app_ui/widgets/category_card.dart';
import 'package:course_app_ui/widgets/link_icon.dart';
import 'package:course_app_ui/widgets/search_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoryScreen extends StatelessWidget {
  _buildHeader() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LinkIcon(
            imageSrc: 'assets/icons/menu.png',
            height: 10,
            width: 16,
            onTap: () {},
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

  _buildCategoryCards() {
    return SliverStaggeredGrid.countBuilder(
      mainAxisSpacing: 16,
      crossAxisCount: 2,
      crossAxisSpacing: 16,
      itemCount: categories.length,
      staggeredTileBuilder: (int index) =>
          StaggeredTile.extent(1, index == 1 || index == 4 ? 250 : 200),
      itemBuilder: (BuildContext context, int index) {
        return CategoryCard(
          category: categories[index],
          margin: EdgeInsets.only(
            right: index.isOdd ? 16 : 0,
            left: index.isEven ? 16 : 0,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CategoryDetailScreen(
                  categoryDetail: categoryDetails[categories[index].tag],
                ),
              ),
            );
          },
        );
      },
    );
  }

  _buildContent(BuildContext context) {
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
          _buildCategoryCards(),
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
          _buildContent(context),
        ],
      ),
    );
  }
}
