import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class WaitingPaymentView extends StatefulWidget {
  const WaitingPaymentView({Key? key}) : super(key: key);

  @override
  State<WaitingPaymentView> createState() => _WaitingPaymentViewState();
}

class _WaitingPaymentViewState extends State<WaitingPaymentView> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: btn4b9,
            child: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/icons/delay.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 300,
            child: Column(
              children: [
                Text(
                  "Waiting payment",
                  style: text24Medium393,
                ),
                Text(
                  "Pay the payment so that delivery is quickly received",
                  style: text16Medium8686,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "082376817399",
                  style: text24Medium393,
                  textAlign: TextAlign.center,
                ),
                Text(
                  "A/n : Nutricycle",
                  style: text16Medium8686,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: btn4b9,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // Corner radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        bottom: 16, top: 16, right: 30, left: 30),
                    child: Text(
                      "Confirm Payment",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Any Problem?",
                      style: text14Medium8686,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Call Center",
                        style: text14Bold1168.copyWith(
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
