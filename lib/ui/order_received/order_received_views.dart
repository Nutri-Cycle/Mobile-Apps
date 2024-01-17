import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_color.dart';

class OrderReceivedView extends StatefulWidget {
  const OrderReceivedView({Key? key}) : super(key: key);

  @override
  State<OrderReceivedView> createState() => _OrderReceivedViewState();
}

class _OrderReceivedViewState extends State<OrderReceivedView> {
  @override
  Widget build(BuildContext context) {
    AllSize allSize = AllSize(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const SizedBox(),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: btnColor,
                  radius: 40,
                  child: const Icon(
                    Icons.check,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Text("Order Received", style: text24Medium393),
              Text("Let's rate your order", style: text16MediumABAB),
              const SizedBox(
                height: 11,
              ),
              productRateItems(),
              productRateItems(),
              productRateItems(),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30.0,
                  right: 30,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    primary: btnColor,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12.0), // Corner radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                      bottom: 16,
                      top: 16,
                    ),
                    child: Text(
                      "Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have order?"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Call Center"),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          )),
    );
  }

  Widget productRateItems() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: Column(
        children: [
          ListTile(
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
              style: text16Medium393,
            ),
            subtitle: Text(
              "x1",
              style: text14Semibold,
            ),
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/rate_product.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/rate_product.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/rate_product.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/rate_product.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/icons/rate_product.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Write your message here",
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: const Color(0xffC4C4C4).withOpacity(0.2),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            maxLines: 3,
          ),
          const SizedBox(
            height: 18,
          ),
        ],
      ),
    );
  }
}
