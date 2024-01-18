import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nutricycle_mobileapps/ui/detail_suffer/detail_suffer_view.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class GmapViews extends StatefulWidget {
  const GmapViews({Key? key}) : super(key: key);

  @override
  State<GmapViews> createState() => _GmapViewsState();
}

class _GmapViewsState extends State<GmapViews> {
  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          markers: {
            Marker(
              markerId: const MarkerId("marker2"),
              position: const LatLng(37.415768808487435, -122.08440050482749),
              onTap: () {
                bodyCardWiget();
              },
            ),
          },
          mapType: MapType.normal,
          initialCameraPosition: _kGooglePlex,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: color1168,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0), // Corner radius
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, bottom: 16, top: 16),
                child: Text("Tap posyandu\nwhere you want to donate",
                    textAlign: TextAlign.center,
                    style: text16Semibold.copyWith(
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ),
      ],
    );
  }

  void bodyCardWiget() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        context: context,
        builder: (context) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 120,
                      height: 4,
                      color: const Color(0xffD9D9D9),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
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
                                width: ScreenUtil().setWidth(baseWidthDevice) *
                                    0.4,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/posyandu.png"),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: ScreenUtil().setWidth(baseWidthDevice) *
                                    0.4,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                        "assets/images/posyandu.png"),
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
                                  image: AssetImage(
                                      "assets/icons/icon_posyandu.png"),
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
                                  ScreenUtil().setHeight(baseHeightDevice) *
                                      0.012,
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
                                  ScreenUtil().setHeight(baseHeightDevice) *
                                      0.012,
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
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: GestureDetector(
                              onTap: () => navigateToScreen(
                                  context, DetailSufferView.routeName),
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
                                          top: 20.0,
                                          bottom: 20,
                                          left: 20,
                                          right: 20),
                                      child: ListTile(
                                        contentPadding:
                                            const EdgeInsets.symmetric(
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
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          const SizedBox(),
                                          const SizedBox(),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              primary: btnColor,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
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
                ],
              ),
            ),
          );
        });
  }
}
