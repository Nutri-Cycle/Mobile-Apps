import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/ui/detailFood/detail_food.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class DonationView extends StatefulWidget {
  static const routeName = '/donation_view';
  const DonationView({Key? key}) : super(key: key);

  @override
  State<DonationView> createState() => _DonationViewState();
}

class _DonationViewState extends State<DonationView> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Donation",
          style: text24Medium393,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              "assets/icons/filter_icon.png",
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 8.0, // Spacing between columns
              mainAxisSpacing: 8.0, // Spacing between rows
              childAspectRatio: 11 / 16),
          itemCount: 6, // Number of items in the grid
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => navigateToScreen(context, DetailFood.routeName),
              child: _gridItem("greenpeal", "Green Peal"),
            ); // Each grid item contains a ListView
          },
        ),
      ),
    );
  }

  Widget _gridItem(String gambar, String title) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(12.0), // Adjust the radius as needed
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitHeight,
              image: AssetImage('assets/images/$gambar.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
            top: 7,
          ),
          child: Row(
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
        ),
        const SizedBox(
          height: 6,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
            top: 7,
          ),
          child: Text(
            title,
            style: text14Semi393,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
          ),
          child: Text(
            "Warung Marta",
            style: text10MediumB1BB,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 14.0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Rp 70.000",
                style: text16Semi393,
              ),
              const CircleAvatar(
                backgroundColor: Color(0xffE3EBEE),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
