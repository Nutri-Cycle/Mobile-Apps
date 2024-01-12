import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class DetailFood extends StatelessWidget {
  const DetailFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 28.0, right: 32),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ListView(
          primary: false,
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 23,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/images/left_arrow.png",
                  width: 20,
                  height: 20,
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
            SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/detail_food.png"),
                ),
              ),
            ),
            SizedBox(
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
                    SizedBox(
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
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Image.asset(
                  "assets/icons/icon_warung.png",
                  width: 29,
                  height: 29,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Warung Marta",
                  style: text16Medium393,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardWidget("Expired", "12/8/23"),
                SizedBox(
                  width: 10,
                ),
                cardWidget("Texture", "Powder"),
                SizedBox(
                  width: 10,
                ),
                cardWidget("Condition", "Good"),
              ],
            ),
            SizedBox(
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
            SizedBox(
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
            SizedBox(
              height: 16,
            ),
            reviewWidget(),
            Container(
              height: 150,
            ),
          ],
        ),
      ),
    ));
  }

  Widget cardWidget(String title, String content) {
    return Container(
      padding: EdgeInsets.all(16.0),
      width: 100,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffE2E2E2),
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
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/avatar_review.png"),
          ),
          title: Text("Martina"),
          subtitle: Row(children: [
            Image.asset("assets/icons/star.png"),
            SizedBox(
              width: 2,
            ),
            Image.asset("assets/icons/star.png"),
            SizedBox(
              width: 2,
            ),
            Image.asset("assets/icons/star.png"),
            SizedBox(
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
