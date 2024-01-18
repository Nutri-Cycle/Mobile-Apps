import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/beneficiary/pick_beneficiary_views.dart';
import 'package:nutricycle_mobileapps/ui/checkout/checkout_view.dart';
import 'package:nutricycle_mobileapps/ui/detailFood/detail_food.dart';
import 'package:nutricycle_mobileapps/ui/detail_suffer/detail_suffer_view.dart';
import 'package:nutricycle_mobileapps/ui/donation_screen/donation_screen.dart';
import 'package:nutricycle_mobileapps/ui/introduction_screen/views/introduction.dart';
import 'package:nutricycle_mobileapps/ui/order_received/order_received_views.dart';
import 'package:nutricycle_mobileapps/ui/payment/finish_payment_view.dart';
import 'package:nutricycle_mobileapps/ui/payment/waiting_payment_view.dart';
import 'package:nutricycle_mobileapps/ui/track_order/track_order_view.dart';
import 'package:nutricycle_mobileapps/utils/theme_colors.dart';
import 'package:nutricycle_mobileapps/widgets/navigation_bar_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(baseWidthDevice, baseHeightDevice),
        builder: (_, child) {
          return MaterialApp(
            theme: ThemeData(fontFamily: 'Poppins'),
            debugShowCheckedModeBanner: false,
            // theme: ThemeData(fontFamily: 'Poppins'),
            initialRoute: IntroductionScreen.routeName,
            routes: {
              IntroductionScreen.routeName: (context) =>
                  const IntroductionScreen(),
              NavigationBarWidgets.routeName: (context) =>
                  NavigationBarWidgets(),
              PickBeneficiaryViews.routeName: (context) =>
                  const PickBeneficiaryViews(),
              DetailFood.routeName: (context) => const DetailFood(),
              TrackOrderView.routeName: (context) => const TrackOrderView(),
              WaitingPaymentView.routeName: (context) =>
                  const WaitingPaymentView(),
              CheckoutView.routeName: (context) => const CheckoutView(),
              DetailSufferView.routeName: (context) => const DetailSufferView(),
              DonationScreen.routeName: (context) => const DonationScreen(),
              OrderReceivedView.routeName: (context) =>
                  const OrderReceivedView(),
              FinishPaymentView.routeName: (context) =>
                  const FinishPaymentView(),
            },
          );
        });
  }
}
