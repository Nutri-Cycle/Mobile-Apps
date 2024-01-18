import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/beneficiary/pick_beneficiary_views.dart';
import 'package:nutricycle_mobileapps/ui/checkout/checkout_view.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailFood extends StatefulWidget {
  static const routeName = '/detail_food';
  const DetailFood({Key? key}) : super(key: key);

  @override
  State<DetailFood> createState() => _DetailFoodState();
}

class _DetailFoodState extends State<DetailFood> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0, right: 32, bottom: 100),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: ListView(
                primary: false,
                shrinkWrap: true,
                children: [
                  const SizedBox(
                    height: 23,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          backToScreen(context);
                        },
                        child: Image.asset(
                          "assets/images/left_arrow.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Food Detail",
                        style: text24Medium393,
                      ),
                      Image.asset(
                        "assets/images/love_outline.png",
                        width: 30,
                        height: 30,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/detail_food.png"),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(child: Text("Sancow Milk", style: text24Medium)),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/star.png",
                                width: 16,
                                height: 16,
                              ),
                              Text(
                                "4.3",
                                style: text16Medium,
                              ),
                              Text(
                                "(5)",
                                style: text14Semibold,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/icons/location_blue.png",
                                width: 16,
                                height: 16,
                              ),
                              Text(
                                "1 km",
                                style: text16Medium,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icons/icon_warung.png",
                        width: 29,
                        height: 29,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Warung Marta",
                        style: text16Medium393,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      cardWidget("Expired", "12/8/23"),
                      const SizedBox(
                        width: 10,
                      ),
                      cardWidget("Texture", "Powder"),
                      const SizedBox(
                        width: 10,
                      ),
                      cardWidget("Condition", "Good"),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: text18Semi393,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Milk that is clean and suitable for drinking in powder form can still be drunk for the next month, providing nutrition for your body at b....",
                        style: text14Medium7b84,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Reviews",
                        style: text18Semi393,
                      ),
                      Image.asset(
                        "assets/icons/arrow_rightt.png",
                        width: 22,
                        height: 22,
                      ),
                    ],
                  ),
                  reviewWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  reviewWidget(),
                  Container(
                    height: 150,
                  ),
                ],
              ),
            ),
          ),
          SlidingUpPanel(
            minHeight: ScreenUtil().setHeight(baseHeightDevice) * 0.25,
            maxHeight: ScreenUtil().setHeight(baseHeightDevice) * 0.25,
            panel: Container(
              padding: const EdgeInsets.only(left: 24, top: 30, right: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xffE3EBEE),
                            child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                fontSize: AllSize.font18,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: const Color(0xff65B741),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp 70.000",
                            style: text24BoldGreen,
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            navigateToScreen(
                                context, PickBeneficiaryViews.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30.0), // Corner radius
                              side: const BorderSide(
                                  color: Colors.green,
                                  width: 2), // Border color
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, right: 14, bottom: 20, top: 20),
                            child: Text(
                              "Donate",
                              style: TextStyle(
                                color: btnColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            navigateToScreen(context, CheckoutView.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: btnColor,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30.0), // Corner radius
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 14.0, right: 14, bottom: 20, top: 20),
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardWidget(String title, String content) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: ScreenUtil().setHeight(baseHeightDevice) * 0.12,
      height: ScreenUtil().setHeight(baseHeightDevice) * 0.12,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xffE2E2E2),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Center(
          child: Column(
        children: [
          Text(
            title,
            style: text10SemiABAB,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            content,
            style: text14Medium393,
          ),
        ],
      )),
    );
  }

  Widget reviewWidget() {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/avatar_review.png"),
          ),
          title: const Text("Martina"),
          subtitle: Row(children: [
            Image.asset("assets/icons/star.png"),
            const SizedBox(
              width: 2,
            ),
            Image.asset("assets/icons/star.png"),
            const SizedBox(
              width: 2,
            ),
            Image.asset("assets/icons/star.png"),
            const SizedBox(
              width: 2,
            ),
            Image.asset("assets/icons/star.png"),
          ]),
        ),
        Text(
          "The milk still in good condition, there are no effect when drinking it",
          style: text12Regular,
        )
      ],
    );
  }
}
