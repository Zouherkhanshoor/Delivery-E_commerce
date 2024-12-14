import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/view/screen/orders/accepted.dart';
import 'package:new_app/view/screen/orders/pending.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int i);
}

class HomescreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listpage = [
    const OrdersPending(),
    const OrdersAccepted(),
    Text(""),
  ];

  List buttonappbar = [
    {"title": "pending", "icon": Icons.home},
    {"title": "Accepted", "icon": Icons.playlist_add_check_circle_sharp},
    {"title": "Settings", "icon": Icons.settings},
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
