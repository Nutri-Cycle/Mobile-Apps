import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/detailFood/detail_food.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/theme_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 852));
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 35.h,
                  ),
                  Icon(
                    Icons.search,
                    size: 35.h,
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              Text(
                'Category',
                style: text18Bold,
              ),
              SizedBox(height: 15.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          height: 65.h,
                          child: Image.asset('assets/images/category_1.png')),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          height: 65.h,
                          child: Image.asset('assets/images/category_2.png')),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          height: 65.h,
                          child: Image.asset('assets/images/category_3.png')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Food Around you!',
                    style: text18Bold,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: text14Mediumcolor408BA7,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateToScreen(context, DetailFood.routeName);
                      },
                      child: Container(
                        width: 200.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 200.w,
                                  height: 120.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.h),
                                      topRight: Radius.circular(18.h),
                                    ),
                                  ),
                                  child: Image.asset(
                                      'assets/images/susu_sancow.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 14.0,
                                    left: 18.0,
                                  ),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/star_rating.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 4.3 ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 15.w),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/pin_location.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 1 km ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Sancow Milk',
                                                style: text14Bold,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Warung Marta',
                                                style: text10MediumABAB,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Rp. 70.000',
                                                style: text18Bold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 35.w,
                                            height: 34.h,
                                            decoration: BoxDecoration(
                                              color: colorE3EBEE,
                                              borderRadius:
                                                  BorderRadius.circular(200.h),
                                            ),
                                            child: Image.asset(
                                              'assets/images/plus.png',
                                              scale: 3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 18.h,
                              child: Container(
                                width: 70.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  color: colorFFB534,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12.h),
                                      bottomRight: Radius.circular(12.h)),
                                ),
                                child: Center(
                                  child: Text(
                                    '5 Left',
                                    style: text14ColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    // Pembatas Food 2
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 200.w,
                                  height: 120.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.h),
                                      topRight: Radius.circular(18.h),
                                    ),
                                  ),
                                  child: Image.asset('assets/images/sosis.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 14.0,
                                    left: 18.0,
                                  ),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/star_rating.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 4.3 ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 15.w),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/pin_location.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 1 km ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'MAP Sausage',
                                                style: text14Bold,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Warung dua saudara',
                                                style: text10MediumABAB,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Rp. 5.000',
                                                style: text18Bold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 35.w,
                                            height: 34.h,
                                            decoration: BoxDecoration(
                                              color: colorE3EBEE,
                                              borderRadius:
                                                  BorderRadius.circular(200.h),
                                            ),
                                            child: Image.asset(
                                              'assets/images/plus.png',
                                              scale: 3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 18.h,
                              child: Container(
                                width: 70.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  color: colorFFB534,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12.h),
                                      bottomRight: Radius.circular(12.h)),
                                ),
                                child: Center(
                                  child: Text(
                                    '5 Left',
                                    style: text14ColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    // Pembatas Food 2
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200.w,
                        height: 250.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: 200.w,
                                  height: 120.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.h),
                                      topRight: Radius.circular(18.h),
                                    ),
                                  ),
                                  child:
                                      Image.asset('assets/images/susu_msg.png'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 14.0,
                                    left: 18.0,
                                  ),
                                  child: Stack(
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/star_rating.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 4.3 ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(width: 15.w),
                                                  Row(
                                                    children: [
                                                      SizedBox(
                                                        height: 15.h,
                                                        child: Image.asset(
                                                          'assets/images/pin_location.png',
                                                        ),
                                                      ),
                                                      Text(
                                                        ' 1 km ',
                                                        style: text8Medium7b84,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'MGS Milk',
                                                style: text14Bold,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Warung dua saudara',
                                                style: text10MediumABAB,
                                              ),
                                              SizedBox(height: 5.h),
                                              Text(
                                                'Rp. 50.000',
                                                style: text18Bold,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            width: 35.w,
                                            height: 34.h,
                                            decoration: BoxDecoration(
                                              color: colorE3EBEE,
                                              borderRadius:
                                                  BorderRadius.circular(200.h),
                                            ),
                                            child: Image.asset(
                                              'assets/images/plus.png',
                                              scale: 3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 18.h,
                              child: Container(
                                width: 70.w,
                                height: 30.h,
                                decoration: BoxDecoration(
                                  color: colorFFB534,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(12.h),
                                      bottomRight: Radius.circular(12.h)),
                                ),
                                child: Center(
                                  child: Text(
                                    '5 Left',
                                    style: text14ColorWhite,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                    width: 500.w,
                    height: 230.h,
                    child: Image.asset('assets/images/banner_info.png')),
              ),
              SizedBox(height: 50.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Info for you!',
                    style: text18Bold,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'View All',
                      style: text14Mediumcolor408BA7,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200.w,
                        height: 260.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 200.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18.h),
                                  topRight: Radius.circular(18.h),
                                ),
                              ),
                              child: Image.asset('assets/images/news_1.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 18.0,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Miss siti : Thank you \n NutriCycle',
                                        style: text16Bold,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        'My child\'s 5 years old \n weight has increas 5 kg',
                                        style: text12Medium8C8F93,
                                      ),
                                      SizedBox(height: 5.h),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Read More',
                                          style: text14MediumbtnReadMore,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200.w,
                        height: 260.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 200.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18.h),
                                  topRight: Radius.circular(18.h),
                                ),
                              ),
                              child: Image.asset('assets/images/news_2.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 18.0,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'NutrcyEvent : Giving\nhope to Posyandu',
                                        style: text16Bold,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        'visit posyandu for provide \nnutrition Indonesian child',
                                        overflow: TextOverflow.ellipsis,
                                        style: text12Medium8C8F93,
                                      ),
                                      SizedBox(height: 5.h),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Read More',
                                          style: text14MediumbtnReadMore,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 200.w,
                        height: 260.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: colorABAB,
                              blurRadius: 5.0,
                            )
                          ],
                          color: colorWhite,
                          borderRadius: BorderRadius.circular(18.h),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 200.w,
                              height: 120.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18.h),
                                  topRight: Radius.circular(18.h),
                                ),
                              ),
                              child: Image.asset('assets/images/news_3.png'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10.0,
                                left: 18.0,
                              ),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '120 families have\nreceived assistance',
                                        style: text16Bold,
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        'with the aim of providing \n nutrition to all levels of ...',
                                        overflow: TextOverflow.ellipsis,
                                        style: text12Medium8C8F93,
                                      ),
                                      SizedBox(height: 5.h),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Text(
                                          'Read More',
                                          style: text14MediumbtnReadMore,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h),
            ],
          ),
        ),
      ],
    ));
  }
}
