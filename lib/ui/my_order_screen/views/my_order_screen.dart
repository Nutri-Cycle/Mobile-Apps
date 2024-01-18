import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(393, 852));
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xfff5f5f5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 50, left: 21, right: 21),
                width: double.infinity,
                height: 134.5.h,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 2.5, 0),
                  width: double.infinity,
                  height: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 192.5, 0),
                        child: Text(
                          'My Orders',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                            color: Color(0xff393e46),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5.5, 0, 5.5),
                        height: double.infinity,
                        child: Center(
                          child: SizedBox(
                            width: 35.h,
                            height: 35.h,
                            child: Image.asset(
                              'assets/images/icons/setting_my_order.png',
                              width: 25.h,
                              height: 25.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 37),
                  width: 441.h,
                  height: 47.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 141.h,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe7e7e7)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              'No Payment',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff393e46),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 141.h,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe7e7e7)),
                            color: Color(0xff65b741),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              'Delivery',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                height: 1.5,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 141.h,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffe7e7e7)),
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Center(
                            child: Text(
                              'Finished',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Color(0xff393e46),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(28, 0, 28, 0),
                padding: EdgeInsets.fromLTRB(19, 24, 19, 24),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupym56Wa8 (3RLkJnKf6mnbkCaePKym56)
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 19.83),
                      width: double.infinity,
                      height: 189.5,
                      child: Stack(
                        children: [
                          Positioned(
                            // frame67SCt (131:1327)
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 299,
                              height: 71.67,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame95120XVE (131:1328)
                                    margin: EdgeInsets.fromLTRB(0, 0, 107, 0),
                                    height: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame1262epk (131:1329)
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 15, 0),
                                          width: 38,
                                          height: 38,
                                          child: Image.asset(
                                            'assets/images/market.png',
                                            width: 38,
                                            height: 38,
                                          ),
                                        ),
                                        Container(
                                          // frame95117mPa (131:1332)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // warungmartaKfz (131:1333)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 0, 2),
                                                child: Text(
                                                  'Warung Marta',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.3799999952,
                                                    color: Color(0xff332c39),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame94810dAt (131:1334)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 58, 0),
                                                padding: EdgeInsets.fromLTRB(
                                                    6, 4, 6, 4),
                                                height: 30.h,
                                                decoration: BoxDecoration(
                                                  color: Color(0xffe9f5ff),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Text(
                                                  'Donation',
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.8,
                                                    color: Color(0xff1168f4),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame95119t6p (131:1337)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 20.67),
                                    width: 22,
                                    height: 22,
                                    child: Image.asset(
                                      'assets/images/icons/arrow_right_icon.png',
                                      width: 22,
                                      height: 22,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            // frame1228bmv (131:1340)
                            left: 0,
                            top: 71,
                            child: Container(
                              width: 299,
                              height: 118.5,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame67iLk (131:1341)
                                    margin: EdgeInsets.fromLTRB(0, 0, 0, 14.83),
                                    width: double.infinity,
                                    height: 51.83,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame95116SnY (131:1342)
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 10, 0.17),
                                          width: 62,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Align(
                                            // image6Nw6 (131:1343)
                                            alignment: Alignment.topRight,
                                            child: SizedBox(
                                              width: 75,
                                              height: 75,
                                              child: Image.asset(
                                                'assets/images/order_1.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame1225.hWGc (131:1345)
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0.83, 0, 0),
                                          height: 51,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame47.h2kk (131:1346)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 19, 0),
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // sancowmilkNZi (131:1347.h)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 3),
                                                      child: Text(
                                                        'Sancow milk',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.3800000191,
                                                          color:
                                                              Color(0xff332c39),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // x1g4c (131:1348)
                                                      'x1',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3799999782,
                                                        color:
                                                            Color(0xffb9b9b9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // rp70000cix (131:1350)
                                                'Rp 70.000',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3799999952,
                                                  color: Color(0xff332c39),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // frame68xXv (131:1351)
                                    width: double.infinity,
                                    height: 51.83,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // frame9511679v (131:1352)
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 10, 0.17),
                                          width: 62,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                          ),
                                          child: Align(
                                            // image6SCC (131:1353)
                                            alignment: Alignment.centerRight,
                                            child: SizedBox(
                                              width: 75,
                                              height: 75,
                                              child: Image.asset(
                                                'assets/images/order_2.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // frame1225.haJQ (131:1355)
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0.83, 0, 0),
                                          height: 51,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame47.h73S (131:1356)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 0, 12, 0),
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // pronamibis3hn (131:1357)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 0, 3),
                                                      child: Text(
                                                        'Pronami bis...',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          height: 1.3800000191,
                                                          color:
                                                              Color(0xff332c39),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // x1yLY (131:1358)
                                                      'x1',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3799999782,
                                                        color:
                                                            Color(0xffb9b9b9),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                // rp200007xY (131:1360)
                                                'Rp 20.000',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.3799999952,
                                                  color: Color(0xff332c39),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame95121TFi (131:1361)
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // totalrp90000bsi (131:1362)
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
                            child: Text(
                              'Total : Rp 90.000',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                height: 1.3799999952,
                                color: Color(0xff7b8490),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 43,
                              decoration: BoxDecoration(
                                color: Color(0xff65b741),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Rating',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 1.625.h,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
