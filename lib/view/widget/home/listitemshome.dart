import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/homecontroller.dart';
import 'package:new_app/core/constant/color.dart';
import 'package:new_app/data/model/itemsmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:new_app/linkapi.dart';

// class ListItemsHome extends GetView<HomeControllerImp> {
  // const ListItemsHome({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return SizedBox(
  //     height: 140,
  //     child: ListView.builder(
  //         itemCount: controller.items.length,
  //         scrollDirection: Axis.horizontal,
  //         itemBuilder: (context, index) {
  //           return ItemsHome(
  //               itemsModel: ItemsModel.fromJson(controller.items[index]));
  //         }),
  //   );
  // }
// }

// class ItemsHome extends GetView<HomeControllerImp> {
  // final ItemsModel itemsModel;
  // const ItemsHome({super.key, required this.itemsModel});

  // @override
  // Widget build(BuildContext context) {
  //   return InkWell(
  //     onTap: () {
  //       controller.goToPageProductDetails(itemsModel);
  //     },
  //     child: Stack(
  //       children: [
  //         Container(
  //           padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
  //           margin: const EdgeInsets.symmetric(horizontal: 10),
  //           child: CachedNetworkImage(
  //             imageUrl: "${AppLink.imageItems}/${itemsModel.itemsImage}",
  //             height: 210,
  //             width: 160,
  //             fit: BoxFit.fill,
  //           ),
  //         ),
  //         Container(
  //           decoration: BoxDecoration(
  //               color: AppColor.black.withOpacity(0.3),
  //               borderRadius: BorderRadius.circular(30)),
  //           height: 230,
  //           width: 200,
  //         ),
  //         Positioned(
  //             left: 20,
  //             child: Text(
  //               "${itemsModel.itemsName}",
  //               style: const TextStyle(
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.bold,
  //                   fontSize: 17),
  //             ))
  //       ],
  //     ),
  //   );
  // }
// }
