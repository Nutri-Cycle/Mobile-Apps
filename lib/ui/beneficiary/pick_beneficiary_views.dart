import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/ui/gmap_views/gmap_views.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_colors.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';

class PickBeneficiaryViews extends StatefulWidget {
  static const routeName = '/pick_beneficiary';
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
            onPressed: () => backToScreen(context),
          ),
          title: Text(
            "Pick a Beneficiary",
            style: text24Medium393,
          ),
          centerTitle: true,
        ),
        body: const GmapViews());
  }
}
