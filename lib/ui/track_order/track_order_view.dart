import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TrackOrderView extends StatefulWidget {
  static const routeName = '/track_order';
  const TrackOrderView({Key? key}) : super(key: key);

  @override
  State<TrackOrderView> createState() => _TrackOrderViewState();
}

class _TrackOrderViewState extends State<TrackOrderView> {
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
          onPressed: () => backToScreen(context),
        ),
        title: Text(
          "Track Order",
          style: text24Medium393,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(baseHeightDevice) * 0.4,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/trackorder.png",
                  ),
                ),
              ),
            ),
            Text(
              "Your order is has been\nReceived by driver",
              style: text24Medium393,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            bodyCardWiget()
          ],
        ),
      ),
    );
  }

  Widget bodyCardWiget() {
    return Container(
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
                  Text(
                    "Product Items",
                    style: text20SemiBold393,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 0,
                          ),
                          leading: Container(
                            height: 51,
                            width: 60,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/detail_food.png"),
                              ),
                            ),
                          ),
                          title: Text(
                            testingUIText,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: text20Medium393,
                          ),
                          subtitle: Text(
                            "x1",
                            style: text14MediumABAB,
                          ),
                          trailing: Text(
                            "Rp 70.000",
                            style: text16Semibold,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  deliveryTimeWidget(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                      primary: btnColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Corner radius
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 16, top: 16),
                      child: Text(
                        "Order Received",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
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
