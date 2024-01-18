import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/ui/payment/waiting_payment_view.dart';
import 'package:nutricycle_mobileapps/utils/my_separator.dart';
import 'package:nutricycle_mobileapps/utils/navigator_screen.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';
import 'dart:ui' as uii;

class CheckoutView extends StatefulWidget {
  static const routeName = '/checkout';
  const CheckoutView({Key? key}) : super(key: key);

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
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
          "Checkout",
          style: text24Medium393,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            primary: false,
            shrinkWrap: true,
            children: [
              const SizedBox(
                height: 23,
              ),
              addressCardWidget(),
              const SizedBox(
                height: 23,
              ),
              productItemsCardWidget(),
              const SizedBox(
                height: 23,
              ),
              deliveryMethodCardWidget(),
              const SizedBox(
                height: 23,
              ),
              paymentMethodCardWidget(),
              const SizedBox(
                height: 23,
              ),
              ElevatedButton(
                onPressed: () {
                  navigateToScreen(context, WaitingPaymentView.routeName);
                },
                style: ElevatedButton.styleFrom(
                  primary: btnColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0), // Corner radius
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.only(bottom: 16, top: 16),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget addressCardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(24.0), // Adjust the radius as needed
      ),
      elevation: 0,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: ListTile(
              minLeadingWidth: 10,
              title: Text(
                'Address',
                style: text16MediumABAB,
              ),
              subtitle: Text(
                'Bantargebang',
                style: text18Medium393,
              ),
              leading: Icon(
                Icons.location_on_outlined,
                color: colorABAB,
              ),
              trailing: TextButton(
                child: const Text(
                  "Change",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget productItemsCardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(24.0), // Adjust the radius as needed
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
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
                itemCount: 1,
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
                            image: AssetImage("assets/images/detail_food.png"),
                          ),
                        ),
                      ),
                      title: Text(
                        "Sancow Milk",
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
                })
          ],
        ),
      ),
    );
  }

  Widget deliveryMethodCardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(24.0), // Adjust the radius as needed
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0),
            title: Text("Delivery Method", style: text20Medium393),
            trailing: GestureDetector(
              onTap: () {
                _showModalDeliveryMethod();
              },
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Gosend ",
                      style: text20Medium222,
                    ),
                    const WidgetSpan(
                      alignment: uii.PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.chevron_right,
                        size: 26,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }

  void _showModalDeliveryMethod() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        context: context,
        builder: (context) {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Metode Pengiriman",
                style: text22Semi393,
              ),
              const SizedBox(
                height: 30,
              ),
              _layananPengiriman(
                  "nutrisend", "Nutri Send", "8 km", "Rp 70.000"),
              _layananPengiriman("gosend", "Gosend", "8 km", "Rp 60.000"),
              _layananPengiriman("maxim", "Maxim", "8 km", "Rp 50.000"),
            ],
          );
        });
  }

  void _showModalPaymentMethod() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        context: context,
        builder: (context) {
          return Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Metode Pembayaran",
                style: text22Semi393,
              ),
              const SizedBox(
                height: 30,
              ),
              _metodePembayaran("mandiriva", "Mandiri Virtual Account"),
              _metodePembayaran("bcava", "BCA Virtual Account"),
              _metodePembayaran("bniva", "BNI Virtual Account"),
            ],
          );
        });
  }

  Widget _metodePembayaran(String icon, String nama) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorABAB, //                   <--- border color
          ),
        ),
        child: ListTile(
          leading: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icons/$icon.png'),
              ),
            ),
          ),
          title: Text(
            nama,
            style: text16Medium,
          ),
        ),
      ),
    );
  }

  Widget _layananPengiriman(
      String icon, String nama, String jarak, String harga) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: colorABAB, //                   <--- border color
          ),
        ),
        child: ListTile(
          leading: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/icons/$icon.png'),
              ),
            ),
          ),
          title: Text(
            nama,
            style: text20Medium3332,
          ),
          subtitle: Text(
            jarak,
            style: text14SemiBABA,
          ),
          trailing: Text(
            harga,
            style: text16Semi332,
          ),
        ),
      ),
    );
  }

  Widget paymentMethodCardWidget() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(24.0), // Adjust the radius as needed
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                _showModalPaymentMethod();
              },
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                title: Text("Payment Method", style: text20Medium393),
                trailing: const Icon(
                  Icons.chevron_right,
                  size: 26,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Subtotal",
                  style: text18MediumABAB,
                ),
                Text(
                  "Rp 70.000",
                  style: text17Semibold222,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Taxes & Fees",
                  style: text18MediumABAB,
                ),
                Text(
                  "Rp 0",
                  style: text17Semibold222,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Security Fee",
                  style: text18MediumABAB,
                ),
                Text(
                  "Rp 0",
                  style: text17Semibold222,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const MySeparator(color: Color(0xffD9D9D9)),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: text18MediumABAB,
                ),
                Text(
                  "Rp 70.000",
                  style: text17Semibold222,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
