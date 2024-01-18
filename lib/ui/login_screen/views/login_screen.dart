import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/register_screen/views/register_screen.dart';
import 'package:nutricycle_mobileapps/widgets/navigation_bar_widgets.dart';

import '../../../utils/theme_color.dart';
import '../../../widgets/custom_form_field_text_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(393, 852));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/left_arrow.png',
                    height: 28.h,
                  ),
                ),
                SizedBox(width: 70.h),
                Image.asset(
                  'assets/images/logo.png',
                  height: 40.h,
                ),
              ],
            ),
            SizedBox(height: 18.h),
            Text(
              'Login',
              textAlign: TextAlign.center,
              style: text21Bold,
            ),
            SizedBox(height: 5.h),
            Text(
              'Welcome Back!',
              style: text16MediumABAB,
            ),
            SizedBox(height: 30.h),
            Text(
              'Email',
              textAlign: TextAlign.center,
              style: text16Medium,
            ),
            SizedBox(height: 10.h),
            CustomTextFormFieldWidgets(
              onTap: () {},
              hintText: 'Input Nama',
            ),
            SizedBox(height: 15.h),
            Text(
              'Password',
              textAlign: TextAlign.center,
              style: text16Medium,
            ),
            SizedBox(height: 10.h),
            CustomTextFormFieldWidgets(
              onTap: () {},
              hintText: 'Input Password',
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                    onTap: () {},
                    child: Text(
                      ' Forget Password ?',
                      style: text14Mediumcolor7b84,
                    )),
              ],
            ),
            SizedBox(height: 25.h),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NavigationBarWidgets(),
                    ));
              },
              style: ElevatedButton.styleFrom(
                  padding:
                      EdgeInsets.symmetric(horizontal: 156.w, vertical: 21.h),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50.0), // Circular radius
                  ),
                  primary: btnColor,
                  textStyle: text18Semi393),
              child: const Text('Login'),
            ),
            SizedBox(height: 30.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.h,
                    color: colorABAB,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'or',
                    style: text14MediumABAB,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1.h,
                    color: colorABAB,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.h),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(18.h),
                primary: colorWhite,
                onPrimary: Colors.white,
                elevation: 4.h,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: colorABAB),
                  borderRadius: BorderRadius.circular(50.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/google_icon.png',
                    width: 24.h,
                    height: 24.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Login with Google Account',
                    style: text18Semi393,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Don’t have account?',
                    textAlign: TextAlign.center, style: text14Semibold),
                SizedBox(width: 8.w),
                GestureDetector(
                  onTap: (() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ));
                  }),
                  child: Text('Register',
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
