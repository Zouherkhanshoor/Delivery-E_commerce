import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/core/class/status_request.dart';
import 'package:new_app/core/constant/routes.dart';
import 'package:new_app/core/functions/handlingdatacontroller.dart';
import 'package:new_app/core/services/services.dart';
import 'package:new_app/data/datasource/remote/home_data.dart';
import 'package:new_app/data/model/itemsmodel.dart';

abstract class HomeController extends SearchMixController {}

class HomeControllerImp extends HomeController {}

class SearchMixController extends GetxController {
  // List<ItemsModel> listdata = [];
  // HomeData homeData = HomeData(Get.find());

  // late StatusRequest statusRequest;
  // searchData() async {
  //   statusRequest = StatusRequest.loading;

  //   var response = await homeData.searchData(search!.text);
  //   print("===============================controller $response ");

  //   statusRequest = handlingData(response);
  //   if (StatusRequest.success == statusRequest) {
  //     if (response['status'] == "success") {
  //       listdata.clear();
  //       List responsedata = response['data'];
  //       listdata.addAll(responsedata.map((e) => ItemsModel.fromJson(e)));
  //     } else {
  //       statusRequest = StatusRequest.failuer;
  //     }
  //   }
  //   update();
  // }

  // bool isSearch = false;
  // TextEditingController? search;

  // checkSearch(val) {
  //   if (val == "") {
  //     statusRequest = StatusRequest.none;
  //     isSearch = false;
  //   }
  //   update();
  // }

  // onSearchItems() {
  //   isSearch = true;
  //   searchData();
  //   update();
  // }
}
