import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

import '../ui/home_screen/views/home_screen.dart';
import '../ui/my_order_screen/views/my_order_screen.dart';

class NavigationBarWidgets extends StatefulWidget {
  @override
  _NavigationBarWidgetsState createState() => _NavigationBarWidgetsState();
}

class _NavigationBarWidgetsState extends State<NavigationBarWidgets> {
  int selectedIndex = 0;

  List<String> unSelectedIcons = [
    'assets/images/icons/home_icons.png',
    'assets/images/icons/box_icon.png',
    'assets/images/icons/donation_icons.png',
    'assets/images/icons/profile_icons.png',
  ];

  List<String> selectedIcons = [
    'assets/images/icons/filled/home_filled_icons.png',
    'assets/images/icons/filled/box_filled_icons.png',
    'assets/images/icons/donation_icons.png',
    'assets/images/icons/filled/profile_filled_icons.png',
  ];

  List<Widget> pages = [
    HomeScreen(),
    MyOrderScreen(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(393, 852));
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
          color: colorWhite,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 0 ? selectedIcons[0] : unSelectedIcons[0],
                width: 30.w,
                height: 30.h,
                color: selectedIndex == 0 ? Colors.green : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 1 ? selectedIcons[1] : unSelectedIcons[1],
                width: 30.w,
                height: 30.h,
                color: selectedIndex == 1 ? Colors.green : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 2 ? selectedIcons[2] : unSelectedIcons[2],
                width: 30.w,
                height: 30.h,
                color: selectedIndex == 2 ? Colors.green : Colors.grey,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                selectedIndex == 3 ? selectedIcons[3] : unSelectedIcons[3],
                width: 30.w,
                height: 30.h,
                color: selectedIndex == 3 ? Colors.green : Colors.grey,
              ),
              label: '',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.grey,
          unselectedItemColor: null,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
