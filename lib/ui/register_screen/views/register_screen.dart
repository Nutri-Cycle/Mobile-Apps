import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/widgets/navigation_bar_widgets.dart';

import '../../../utils/theme_colors.dart';
import '../../../widgets/custom_form_field_text_widgets.dart';
import '../../home_screen/views/home_screen.dart';
import '../../login_screen/views/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(393, 852));
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 25.h),
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
              'Register',
              textAlign: TextAlign.center,
              style: text21Bold,
            ),
            SizedBox(height: 5.h),
            Text(
              'Fulfill nutrition and eliminate stunting',
              style: text16MediumABAB,
            ),
            SizedBox(height: 15.h),
            Text(
              'Name',
              textAlign: TextAlign.center,
              style: text16Medium,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextFormFieldWidgets(
                  width: 170.w,
                  height: 60.h,
                  onTap: () {},
                  hintText: 'First Name',
                ),
                CustomTextFormFieldWidgets(
                  width: 170.w,
                  height: 60.h,
                  onTap: () {},
                  hintText: 'Last Name',
                ),
              ],
            ),
            SizedBox(height: 15.h),
            Text(
              'Email',
              textAlign: TextAlign.center,
              style: text16Medium,
            ),
            SizedBox(height: 15.h),
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
            SizedBox(height: 15.h),
            CustomTextFormFieldWidgets(
              onTap: () {},
              hintText: 'Input Password',
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('I have read and agree to'),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              ' the Terms and',
                              style: text14Medium4285F4,
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: () {},
                            child: Text(
                              ' Condition',
                              style: text14Medium4285F4,
                            )),
                        Text(' , '),
                        InkWell(
                            onTap: () {},
                            child: Text(
                              ' Privacy Policy',
                              style: text14Medium4285F4,
                            )),
                        Text(' , and  NutriCycle '),
                      ],
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          ' User Agreement',
                          style: text14Medium4285F4,
                        )),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15.h),
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
                      EdgeInsets.symmetric(horizontal: 145.w, vertical: 21.h),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50.0), // Circular radius
                  ),
                  primary: btnColor,
                  textStyle: text18Semi393),
              child: Text('Register'),
            ),
            SizedBox(height: 15.h),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1.h,
                    color: colorABAB,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
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
            SizedBox(height: 15.h),
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
                    'Register with Google',
                    style: text18Semi393,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
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
