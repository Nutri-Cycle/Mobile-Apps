import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class DetailSufferView extends StatefulWidget {
  const DetailSufferView({Key? key}) : super(key: key);

  @override
  State<DetailSufferView> createState() => _DetailSufferViewState();
}

class _DetailSufferViewState extends State<DetailSufferView> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: color393,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Detail Suffer",
            style: text24Medium393,
          ),
          centerTitle: true,
        ),
        body: bodyCardWiget());
  }

  Widget bodyCardWiget() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 26.0,
      ),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            leading: Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/suffer.png"),
                ),
              ),
            ),
            title: Text(
              "Randi",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: text22Semi393,
            ),
            subtitle: Text(
              "5 years old",
              style: text14MediumABAB,
            ),
            trailing: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: bgColorBlue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "4th donation",
                style: text14Semi1168,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Weight",
                    style: text12Semi7b84,
                  ),
                  Text(
                    "80 kg",
                    style: text14Semi393,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Height",
                    style: text12Semi7b84,
                  ),
                  Text(
                    "50 cm",
                    style: text14Semi393,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Motor Delay",
                    style: text12Semi7b84,
                  ),
                  Text(
                    "Walking",
                    style: text14Semi393,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            minLeadingWidth: 0,
            leading: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/income.png"),
                ),
              ),
            ),
            title: Text(
              "Parent Income",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: text18Medium393,
            ),
            trailing: Text(
              "Rp 700.000",
              style: text18Medium7B84,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            minLeadingWidth: 0,
            leading: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/number_child.png"),
                ),
              ),
            ),
            title: Text(
              "Number of Child",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: text18Medium393,
            ),
            trailing: Text(
              "5 (child)",
              style: text18Medium7B84,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
            ),
            minLeadingWidth: 0,
            leading: Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/icons/job.png"),
                ),
              ),
            ),
            title: Text(
              "Job Parent",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: text18Medium393,
            ),
            trailing: Text(
              "Farmer",
              style: text18Medium7B84,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: btnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Corner radius
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 16, top: 16),
                      child: Text(
                        "Donate Now",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
