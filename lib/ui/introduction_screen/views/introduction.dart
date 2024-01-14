import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

import '../../../utils/size_font.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            height: allSize.size.height * 0.070,
          ),
          SizedBox(height: allSize.size.height * 0.025),
          Image.asset(
            'assets/images/kids.png',
            height: allSize.size.height * 0.400,
          ),
          SizedBox(height: allSize.size.height * 0.025),
          Text(
            'Nurturing the body, Nurturing Hope',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: AllSize.fontSemiBig,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: allSize.size.height * 0.025),
          Text(
            'Give hope to all Indonesian children towards a smart and strong country',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textSecondary,
              fontWeight: FontWeight.bold,
              fontSize: AllSize.fontRegular,
            ),
          ),
          SizedBox(height: allSize.size.height * 0.025),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                padding:
                    EdgeInsets.symmetric(horizontal: 165.0, vertical: 22.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), // Circular radius
                ),
                primary: btnColor,
                textStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AllSize.fontRegular)),
            child: Text('Start'),
          ),
          SizedBox(height: allSize.size.height * 0.025),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Have a account?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: textSecondary,
                  fontSize: AllSize.fontSemiSmall,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: allSize.size.width * 0.015),
              GestureDetector(
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: AllSize.fontSemiSmall,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
