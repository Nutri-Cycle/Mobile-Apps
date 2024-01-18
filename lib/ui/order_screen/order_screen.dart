import 'package:flutter/material.dart';
import 'package:nutricycle_mobileapps/model/item_filter.dart';
import 'package:nutricycle_mobileapps/utils/size_font.dart';
import 'package:nutricycle_mobileapps/utils/theme_colors.dart';

class OrderScreen extends StatefulWidget {
  static const routeName = '/donation_view';
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final listFilter = <ItemFilter>[
    ItemFilter(1, 'No Payment', false),
    ItemFilter(2, 'Delivery', false),
    ItemFilter(3, 'Finished', false),
  ];

  final listProduct = <ItemProduct>[
    ItemProduct(
      'Sancow Milk',
      'assets/images/detail_food.png',
      'Rp 70.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, true),
        ItemProductFilter(3, false),
      ],
    ),
    ItemProduct(
      'Greenpeal Milk',
      'assets/images/greenpeal.png',
      'Rp 70.000',
      <ItemProductFilter>[
        ItemProductFilter(1, false),
        ItemProductFilter(2, false),
        ItemProductFilter(3, true),
      ],
    ),
  ];
  final List<ItemProduct>? listProductFilter = <ItemProduct>[];

  @override
  Widget build(BuildContext context) {
    var isFilterActive =
        listFilter.where((element) => element.isFilterActive).isNotEmpty;
    listProductFilter?.clear();
    if (!isFilterActive) {
      listProductFilter?.addAll(listProduct);
    } else {
      for (var element in listProduct) {
        var isPassed = false;
        var itemProductFilter = element.listProductFilter;
        for (var index = 0; index < itemProductFilter.length; index++) {
          var productFilter = itemProductFilter[index];
          var itemFilter = listFilter[index];
          if (productFilter.isFilterActive && itemFilter.isFilterActive) {
            isPassed = true;
            break;
          }
        }
        if (isPassed) {
          listProductFilter?.add(element);
        }
      }
    }
    AllSize allSize = AllSize(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 70,
        leadingWidth: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Order",
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
      body: ListView(
        children: [
          _chipOrder(),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    minLeadingWidth: 0,
                    leading: CircleAvatar(
                        child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(
                          "assets/icons/warungfull.png",
                        ),
                      )),
                    )),
                    title: Text(
                      "Warung Marta",
                      style: text16Medium,
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      size: 30,
                      color: Colors.black,
                    )),
                ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 8,
                    right: 16,
                    bottom: 16,
                  ),
                  itemBuilder: (context, index) {
                    var itemProduct = listProductFilter?[index];
                    return itemProduct != null
                        ? ListTile(
                            leading: Image.asset(
                              itemProduct.photo,
                              width: 64,
                              height: 64,
                              fit: BoxFit.cover,
                            ),
                            title: Text(
                              itemProduct.name,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  const TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: const Text("x1"),
                            trailing: Text(
                              itemProduct.price,
                              maxLines: 1,
                              style: text16Semi332,
                            ),
                          )
                        : const Text("Kosong");
                  },
                  itemCount: listProductFilter?.length,
                ),
                listProductFilter != null
                    ? Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Text(
                          "Total : Rp 70.000",
                          style: text16Semi7b84,
                        ),
                      )
                    : const SizedBox(),
                listProductFilter != null
                    ? Padding(
                        padding: const EdgeInsets.only(
                            right: 30.0, top: 20, bottom: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: btnColor,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12.0), // Corner radius
                              side: const BorderSide(
                                  color: Colors.green,
                                  width: 2), // Border color
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 20.0, right: 20, bottom: 10, top: 10),
                            child: Text(
                              "Rating",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Row(
  //                           crossAxisAlignment = CrossAxisAlignment.start,
  //                           children = [

  //                             Expanded(
  //                               child: Padding(
  //                                 padding: const EdgeInsets.all(8.0),
  //                                 child: Column(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.start,
  //                                   children: [
  //                                     Text(
  //                                       itemProduct.name,
  //                                       maxLines: 2,
  //                                       overflow: TextOverflow.ellipsis,
  //                                       style: const TextStyle(
  //                                           fontWeight: FontWeight.w500),
  //                                     ),
  //                                     Text(
  //                                       itemProduct.price,
  //                                       maxLines: 1,
  //                                     ),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ),
  //                           ],
  //                         )

  Widget _chipOrder() {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        physics: const ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: listFilter.length,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemBuilder: (context, index) {
          var item = listFilter[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 4.0,
            ),
            child: FilterChip(
              padding: const EdgeInsets.all(
                12,
              ),
              selectedColor: btnColor,
              backgroundColor: Colors.white,
              label: Text(
                item.name,
                style: TextStyle(
                  color: item.isFilterActive ? Colors.white : Colors.black,
                ),
              ),
              selected: item.isFilterActive,
              onSelected: (_) =>
                  setState(() => item.isFilterActive = !item.isFilterActive),
            ),
          );
        },
      ),
    );
  }
}
