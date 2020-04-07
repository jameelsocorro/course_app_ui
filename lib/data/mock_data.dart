import 'package:course_app_ui/model/category.dart';
import 'package:course_app_ui/model/category_content.dart';
import 'package:course_app_ui/model/category_detail.dart';
import 'package:course_app_ui/model/category_image.dart';
import 'package:course_app_ui/model/category_image_offset.dart';
import 'package:course_app_ui/utils/app_color.dart';

final categories = [
  Category(
    tag: 'marketing',
    title: 'Marketing',
    totalTopics: 17,
    image: CategoryImage(
      src: 'assets/images/marketing_bg.png',
      backgroundColor: AppColor.cardColor[1],
      offset: CategoryImageOffset(
        top: -20,
        bottom: -120,
        left: 0,
        right: -50,
      ),
    ),
  ),
  Category(
    tag: 'ux_design',
    title: 'UX Design',
    totalTopics: 25,
    image: CategoryImage(
      src: 'assets/images/ux_design_bg.png',
      backgroundColor: AppColor.cardColor[2],
      offset: CategoryImageOffset(
        top: 0,
        bottom: -50,
        left: 0,
        right: -60,
      ),
    ),
  ),
  Category(
    tag: 'photography',
    title: 'Photography',
    totalTopics: 13,
    image: CategoryImage(
      src: 'assets/images/photography_bg.png',
      backgroundColor: AppColor.cardColor[3],
      offset: CategoryImageOffset(
        top: 30,
        bottom: -80,
        left: 0,
        right: -10,
      ),
    ),
  ),
  Category(
    tag: 'business',
    title: 'Business',
    totalTopics: 20,
    image: CategoryImage(
      src: 'assets/images/business_bg.png',
      backgroundColor: AppColor.cardColor[4],
      offset: CategoryImageOffset(
        top: 0,
        bottom: -100,
        left: 0,
        right: -75,
      ),
    ),
  ),
  Category(
    tag: 'web_design',
    title: 'Web Design',
    totalTopics: 25,
    image: CategoryImage(
      src: 'assets/images/ux_design_bg.png',
      backgroundColor: AppColor.cardColor[2],
      offset: CategoryImageOffset(
        top: 0,
        bottom: -50,
        left: 0,
        right: -60,
      ),
    ),
  ),
  Category(
    tag: 'video_editing',
    title: 'Video Editing',
    totalTopics: 19,
    image: CategoryImage(
      src: 'assets/images/photography_bg.png',
      backgroundColor: AppColor.cardColor[3],
      offset: CategoryImageOffset(
        top: 30,
        bottom: -80,
        left: 0,
        right: -10,
      ),
    ),
  ),
];

final categoryDetails = {
  'marketing': CategoryDetail(
    tag: 'video_editing',
    title: 'Video Editing',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: false,
    image: CategoryImage(
      src: 'assets/images/marketing_bg.png',
      backgroundColor: AppColor.cardColor[1],
      offset: CategoryImageOffset(
        top: -20,
        bottom: -120,
        left: 0,
        right: -50,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Welcome to the Course',
        duration: '5:00 mins',
        done: true,
      ),
      CategoryContent(
        title: 'Marketing Intro',
        duration: '5:35 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Marketing Process',
        duration: '10:00 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Customer Perspective',
        duration: '5:00 mins',
        done: true,
      ),
      CategoryContent(
        title: 'How to Market your Product',
        duration: '5:00 mins',
        done: true,
      )
    ],
  ),
  'ux_design': CategoryDetail(
    tag: 'ux_design',
    title: 'UX Design',
    students: 20,
    rating: 4.9,
    price: 50,
    originalPrice: 70,
    bestSeller: true,
    image: CategoryImage(
      src: 'assets/images/ux_design_bg.png',
      backgroundColor: AppColor.cardColor[1],
      offset: CategoryImageOffset(
        top: -20,
        bottom: -120,
        left: 0,
        right: -50,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Welcome to the Course',
        duration: '5:00 mins',
        done: true,
      ),
      CategoryContent(
        title: 'Design Thinking Intro',
        duration: '5:35 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Design Thinking Intro',
        duration: '10:00 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Design Thinking Process',
        duration: '5:00 mins',
        done: true,
      ),
      CategoryContent(
        title: 'Customer Perspective',
        duration: '5:00 mins',
        done: true,
      ),
      CategoryContent(
        title: 'User Research',
        duration: '5:00 mins',
        done: true,
      ),
    ],
  ),
};
