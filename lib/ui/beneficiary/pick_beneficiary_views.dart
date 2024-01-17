import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/ui/gmap_views/gmap_views.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';
import 'package:timeline_tile/timeline_tile.dart';

class PickBeneficiaryViews extends StatefulWidget {
  const PickBeneficiaryViews({Key? key}) : super(key: key);

  @override
  State<PickBeneficiaryViews> createState() => _PickBeneficiaryViewsState();
}

class _PickBeneficiaryViewsState extends State<PickBeneficiaryViews> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: BackButton(
            color: color393,
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text(
            "Pick a Beneficiary",
            style: text24Medium393,
          ),
          centerTitle: true,
        ),
        body: const GmapViews());
  }

  Widget bodyCardWiget() {
    return Container(
      margin: EdgeInsets.only(
        top: ScreenUtil().setHeight(baseHeightDevice) * 0.26,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40), topRight: Radius.circular(40)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 120,
                height: 4,
                color: const Color(0xffD9D9D9),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: ScreenUtil().setWidth(baseWidthDevice) * 0.4,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/posyandu.png"),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 100,
                            width: ScreenUtil().setWidth(baseWidthDevice) * 0.4,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/posyandu.png"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  AssetImage("assets/icons/icon_posyandu.png"),
                            ),
                          ),
                        ),
                        title: Text(
                          "Posyandu RW 14",
                          style: text22Semi393,
                        ),
                        subtitle: Text(
                          "JL Pejuang RW14/01 Kel. Pejuang, Kec Medan Satria, 17156 Kota Bekasi",
                          style: text14MediumB1BB,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              ScreenUtil().setWidth(baseWidthDevice) * 0.1,
                          vertical:
                              ScreenUtil().setHeight(baseHeightDevice) * 0.012,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(
                                0xffE2E2E2), //                   <--- border color
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Sufferers",
                              style: text10Semi7B84,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "3 children",
                              style: text14Medium332,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal:
                              ScreenUtil().setWidth(baseWidthDevice) * 0.05,
                          vertical:
                              ScreenUtil().setHeight(baseHeightDevice) * 0.012,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(
                                0xffE2E2E2), //                   <--- border color
                          ),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Average family income",
                              style: text10Semi7B84,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Rp 1.000.000",
                              style: text16Semi393,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "List The Suffers",
                    style: text20SemiBold393,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Card(
                          elevation: 6,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                24.0), // Adjust the radius as needed
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20.0, bottom: 20, left: 20, right: 20),
                                child: ListTile(
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                  ),
                                  leading: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assets/images/suffer.png"),
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
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 6),
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
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20, left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20.0, bottom: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const SizedBox(),
                                    const SizedBox(),
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        primary: btnColor,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              30.0), // Corner radius
                                        ),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            bottom: 12,
                                            top: 12),
                                        child: Text(
                                          "Donate Now",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget deliveryTimeWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "20 Min",
          style: text24Bold393,
        ),
        Text(
          "Estimated Delivery Time",
          style: text16SemiboldB1BB,
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 70,
                child: TimelineTile(
                  isFirst: index == 0,
                  isLast: index == 4 - 1,
                  indicatorStyle: IndicatorStyle(
                    color: btnColor,
                    width: 40,
                    indicator: _IndicatorExample(number: index + 1),
                    height: 40,
                  ),
                  beforeLineStyle: LineStyle(
                    thickness: 2,
                    color: btnColor,
                  ),
                  endChild: Container(
                    margin: const EdgeInsets.only(left: 13),
                    child: Text(
                      "Your order has been received",
                      style:
                          index == 0 ? text16SemiboldGreen : text16SemiboldB1BB,
                    ),
                  ),
                ),
              );
            })
      ],
    );
  }
}

class _IndicatorExample extends StatelessWidget {
  const _IndicatorExample({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: number == 1 ? Colors.green : Colors.grey,
      ),
      child: const Center(
          child: Icon(
        Icons.check,
        color: Colors.white,
      )),
    );
  }
}
