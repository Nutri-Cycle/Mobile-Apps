import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/login_screen/views/login_screen.dart';
import 'package:nutricycle_mobileapps/ui/register_screen/views/register_screen.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(393, 852));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 70.h,
            ),
            Image.asset(
              'assets/images/kids.png',
              height: 400.h,
            ),
            Text(
              'Nurturing the body, Nurturing Hope',
              textAlign: TextAlign.center,
              style: text28Bold,
            ),
            SizedBox(height: 25.h),
            Text(
              'Give hope to all Indonesian children towards a smart and strong country',
              textAlign: TextAlign.center,
              style: text14Semibold,
            ),
            SizedBox(height: 25.h),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 150.w, vertical: 21.h),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50.0), // Circular radius
                  ),
                  primary: btnColor,
                  textStyle: text18Semi393),
              child: Text('Start'),
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Have a account?',
                    textAlign: TextAlign.center, style: text14Semibold),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  }),
                  child: Text('Login',
                      textAlign: TextAlign.center, style: text18Semi393),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
