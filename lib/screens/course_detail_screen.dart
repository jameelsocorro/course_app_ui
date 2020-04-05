import 'package:course_app_ui/utils/app_color.dart';
import 'package:course_app_ui/data/mock_data.dart';
import 'package:course_app_ui/widgets/tag_clipper.dart';
import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  final String tag;
  final Map<String, Object> image;
  final Color backgroundColor;

  CourseDetailScreen({
    Key key,
    this.tag,
    this.image,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> detail = image['detail'];
    final Map<String, Object> course = courses[tag];
    final List<Map<String, Object>> courseContentData = course['contents'];

    final background = Positioned(
      top: detail['top'],
      bottom: detail['bottom'],
      left: detail['left'],
      right: detail['right'],
      child: Hero(
        tag: tag,
        child: Image.asset(
          this.image['src'],
          fit: BoxFit.contain,
        ),
      ),
    );

    final appBar = AppBar(
      elevation: 0,
      backgroundColor: this.backgroundColor,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              'assets/icons/arrow_left.png',
              width: 16,
              height: 16,
            ),
          ),
          InkWell(
            child: Image.asset(
              'assets/icons/more_vertical.png',
              width: 16,
              height: 16,
            ),
          )
        ],
      ),
    );

    final courseHeader = Container(
      padding: EdgeInsets.only(bottom: 24, top: 32),
      child: Text(
        'Course Content',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w900,
        ),
      ),
    );

    final couseContentItems = Expanded(
      child: ListView.builder(
        itemCount: courseContentData.length,
        itemBuilder: (BuildContext builder, index) {
          final counter = index <= 10
              ? (index + 1).toString().padLeft(2, '0')
              : index.toString();

          final playButton = Container(
            height: 40,
            width: 40,
            child: FlatButton(
              onPressed: () {},
              color: AppColors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset(
                'assets/icons/play.png',
                height: 14,
                width: 10,
              ),
            ),
          );

          return Container(
            margin: EdgeInsets.only(bottom: 32),
            child: Row(
              children: <Widget>[
                Text(
                  counter,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                    color: AppColors.textColor[200],
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
                            courseContentData[index]['duration'],
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textColor[300],
                            ),
                          ),
                        ),
                        Text(
                          courseContentData[index]['title'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                (courseContentData[index]['done'])
                    ? playButton
                    : Opacity(
                        opacity: 0.3,
                        child: playButton,
                      ),
              ],
            ),
          );
        },
      ),
    );

    final courseContent = Positioned(
      top: 280,
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.fromLTRB(16, 16, 16, 82),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              courseHeader,
              couseContentItems,
            ],
          ),
        ),
      ),
    );

    final shoppingButton = Container(
      height: 50,
      width: 80,
      margin: EdgeInsets.only(right: 16),
      child: FlatButton(
        onPressed: () {},
        color: AppColors.pink,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Image.asset(
          'assets/icons/shopping_bag.png',
          height: 20,
          width: 20,
        ),
      ),
    );

    final buyButton = Expanded(
      child: Container(
        height: 50,
        child: FlatButton(
          onPressed: () {},
          color: AppColors.blue,
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
    );

    final courseFooter = Positioned(
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
          child: Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                shoppingButton,
                buyButton,
              ],
            ),
          ),
        ),
      ),
    );

    final header = Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 8),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: ClipPath(
              clipper: TagClipper(),
              child: Container(
                padding: EdgeInsets.fromLTRB(6, 6, 12, 4),
                color: AppColors.yellow,
                child: Text(
                  'BESTSELLER',
                  style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 16),
            child: Text(
              'Design Thinking',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                'assets/icons/user.png',
                width: 14,
                height: 14,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 16),
                child: Text(
                  '${course['students']}k',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.textColor[500],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Image.asset(
                'assets/icons/star.png',
                width: 14,
                height: 14,
              ),
              Container(
                padding: EdgeInsets.only(left: 8, right: 16),
                child: Text(
                  '${course['rate']}',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textColor[500],
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 32),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    '\$${course['price']}',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    '\$${course['originalPrice']}',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough,
                      color: AppColors.textColor[500],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );

    return Scaffold(
      backgroundColor: this.backgroundColor,
      appBar: appBar,
      body: Stack(
        children: <Widget>[
          background,
          header,
          courseContent,
          courseFooter,
        ],
      ),
    );
  }
}
