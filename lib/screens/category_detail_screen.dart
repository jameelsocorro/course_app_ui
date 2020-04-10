import 'package:course_app_ui/model/category_detail.dart';
import 'package:course_app_ui/utils/app_color.dart';
import 'package:course_app_ui/widgets/course_item.dart';
import 'package:course_app_ui/widgets/course_pricing.dart';
import 'package:course_app_ui/widgets/course_tag.dart';
import 'package:course_app_ui/widgets/icon_label.dart';
import 'package:course_app_ui/widgets/link_icon.dart';
import 'package:flutter/material.dart';

class CategoryDetailScreen extends StatelessWidget {
  final CategoryDetail categoryDetail;

  CategoryDetailScreen({
    this.categoryDetail,
  });

  _buildBackground() {
    return Positioned(
      top: categoryDetail.image.offset.top,
      bottom: categoryDetail.image.offset.bottom,
      left: categoryDetail.image.offset.left,
      right: categoryDetail.image.offset.right,
      child: Image.asset(
        categoryDetail.image.src,
        fit: BoxFit.contain,
      ),
    );
  }

  _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: categoryDetail.image.backgroundColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          LinkIcon(
            imageSrc: 'assets/icons/arrow_left.png',
            width: 16,
            height: 16,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          LinkIcon(
            imageSrc: 'assets/icons/more_vertical.png',
            width: 16,
            height: 16,
            onTap: () {},
          )
        ],
      ),
    );
  }

  _buildHeading(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 32),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (categoryDetail.bestSeller)
            CourseTag(
              label: 'BESTSELLER',
            ),
          Padding(
            padding: EdgeInsets.only(bottom: 16, top: 16),
            child: Text(
              categoryDetail.title,
              style:
                  Theme.of(context).textTheme.headline5.copyWith(fontSize: 24),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              IconLabel(
                src: 'assets/icons/user.png',
                label: '${categoryDetail.students}k',
              ),
              IconLabel(
                src: 'assets/icons/star.png',
                label: '${categoryDetail.rating}',
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            child: CoursePricing(
              price: categoryDetail.price,
              originalPrice: categoryDetail.originalPrice,
            ),
          )
        ],
      ),
    );
  }

  _buildCoursePanel() {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 78),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 24, top: 32),
                child: Text(
                  'Course Content',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
              Expanded(                
                child: ListView.builder(
                  itemCount: categoryDetail.contents.length,
                  itemBuilder: (BuildContext builder, index) {
                    final counter = index <= 10
                        ? (index + 1).toString().padLeft(2, '0')
                        : index.toString();

                    return CourseItem(
                      counter: counter,
                      duration: categoryDetail.contents[index].duration,
                      title: categoryDetail.contents[index].title,
                      iconOpacity:
                          (categoryDetail.contents[index].done) ? 1 : 0.3,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildCourseFooter() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Color.fromRGBO(13, 19, 51, 0.10),
              blurRadius: 50,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Container(
                  height: 50,
                  width: 80,
                  margin: EdgeInsets.only(right: 16),
                  child: FlatButton(
                    onPressed: () {},
                    color: AppColor.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Image.asset(
                      'assets/icons/shopping_bag.png',
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    child: FlatButton(
                      onPressed: () {},
                      color: AppColor.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: categoryDetail.tag,
      child: Scaffold(
        backgroundColor: categoryDetail.image.backgroundColor,
        appBar: _buildAppBar(context),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _buildBackground(),
            Column(
              children: <Widget>[
                _buildHeading(context),
                _buildCoursePanel(),
              ],
            ),
            _buildCourseFooter(),
          ],
        ),
      ),
    );
  }
}
