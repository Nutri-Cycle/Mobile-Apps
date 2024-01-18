import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_colors.dart';
import 'package:nutricycle_mobileapps/widgets/navigation_bar_widgets.dart';

class FinishPaymentView extends StatefulWidget {
  static const routeName = '/finish_payment';
  const FinishPaymentView({Key? key}) : super(key: key);

  @override
  State<FinishPaymentView> createState() => _FinishPaymentViewState();
}

class _FinishPaymentViewState extends State<FinishPaymentView> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
              radius: 30,
              backgroundColor: btnColor,
              child: const Icon(
                Icons.check,
                color: Colors.white,
              )),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                Text(
                  "Finished",
                  style: text24Medium393,
                ),
                Text(
                  "Wait your order in process",
                  style: text16Medium8686,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateToScreen(context, NavigationBarWidgets.routeName);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: btnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // Corner radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        bottom: 16, top: 16, right: 30, left: 30),
                    child: Text(
                      "Track Order",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    navigateToScreen(context, NavigationBarWidgets.routeName);
                  },
                  child: Text(
                    "Go to home page",
                    style: text14Bold1168.copyWith(
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
