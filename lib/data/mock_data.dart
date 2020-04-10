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
    tag: 'marketing',
    title: 'Marketing',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: false,
    image: CategoryImage(
      src: 'assets/images/marketing_bg.png',
      backgroundColor: AppColor.cardColor[1],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 0,
        right: -80,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Introduction',
        duration: '18:27 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Market Research',
        duration: '36:09 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Make a Website',
        duration: '51:59 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Email Marketing',
        duration: '43:49 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Copywriting',
        duration: '29:42 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Search Engine Optimization (SEO)',
        duration: '03:12:11 mins',
        done: false,
      ),
      CategoryContent(
        title: 'YouTube Marketing',
        duration: '01:45:04 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Facebook Marketing',
        duration: '01:29:30 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Twitter Marketing',
        duration: '01:14:44 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Conclusion',
        duration: '22:17 mins',
        done: false,
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
      backgroundColor: AppColor.cardColor[2],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 120,
        right: -120,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'What is User Experience Design?',
        duration: '48:56 mins',
        done: true,
      ),
      CategoryContent(
        title: 'Understanding the Elements of UX',
        duration: '33:03 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Using the Elements - Strategy',
        duration: '44:59 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Using the Elements - Scope',
        duration: '02:03:32 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Using the Elements - Structure',
        duration: '01:03:07 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Using the Elements - Skeleton',
        duration: '02:02:01 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Using the Elements - Surface',
        duration: '01:36:30 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Takeaways and Resources',
        duration: '01:07:19 mins',
        done: false,
      ),
    ],
  ),
  'photography': CategoryDetail(
    tag: 'photography',
    title: 'Photography',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: false,
    image: CategoryImage(
      src: 'assets/images/photography_bg.png',
      backgroundColor: AppColor.cardColor[3],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 60,
        right: -80,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Introduction',
        duration: '07:27 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Exposure',
        duration: '58:26 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Composition',
        duration: '27:00 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Focus and Depth of Field',
        duration: '24:43 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Camera Anatomy & Settings',
        duration: '31:28 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Takeaways and Resources',
        duration: '03:14 mins',
        done: false,
      ),
    ],
  ),
  'business': CategoryDetail(
    tag: 'business',
    title: 'Business',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: true,
    image: CategoryImage(
      src: 'assets/images/business_bg.png',
      backgroundColor: AppColor.cardColor[4],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 120,
        right: -120,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Launching a New Company',
        duration: '01:03:52 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Financial Analysis',
        duration: '36:49 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Managing Cash Flow',
        duration: '09:47 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Financial Capital and Securities Law',
        duration: '32:08 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Bonus Materials',
        duration: '01:37 mins',
        done: false,
      ),
    ],
  ),
  'web_design': CategoryDetail(
    tag: 'web_design',
    title: 'Web Design',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: false,
    image: CategoryImage(
      src: 'assets/images/ux_design_bg.png',
      backgroundColor: AppColor.cardColor[2],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 120,
        right: -120,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Getting Started',
        duration: '11:50 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Layout is King',
        duration: '09:53 mins',
        done: false,
      ),
      CategoryContent(
        title: 'The Art of Color',
        duration: '45:44 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Practice by Mimicking Pros',
        duration: '23:41 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Understanding the Web',
        duration: '13:50 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Building Your First Web Page',
        duration: '02:17:26 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Where to Find Freelance Work',
        duration: '49:30 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Pricing, Proposal Template, & More',
        duration: '48:11 mins',
        done: false,
      ),
    ],
  ),
  'video_editing': CategoryDetail(
    tag: 'video_editing',
    title: 'Video Editing',
    students: 19,
    rating: 4.9,
    price: 30,
    originalPrice: 60,
    bestSeller: false,
    image: CategoryImage(
      src: 'assets/images/photography_bg.png',
      backgroundColor: AppColor.cardColor[3],
      offset: CategoryImageOffset(
        top: -70,
        bottom: null,
        left: 60,
        right: -80,
      ),
    ),
    contents: [
      CategoryContent(
        title: 'Introduction to editing software',
        duration: '14:31 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Working with Directors',
        duration: '38:11 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Music. The Power to Create—or Destroy',
        duration: '13:41 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Story Telling Structures and editing techniques',
        duration: '47:14 mins',
        done: false,
      ),
      CategoryContent(
        title: 'Music, Sound Effects and Narration',
        duration: '34:01 mins',
        done: false,
      ),
      CategoryContent(
        title: 'YouTube',
        duration: '31:32 mins',
        done: false,
      ),
    ],
  ),
};
