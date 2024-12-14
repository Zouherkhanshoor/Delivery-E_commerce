import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/homescreen_controller.dart';
import 'package:new_app/core/functions/alertexitapp.dart';
// import 'package:new_app/core/constant/color.dart';
import 'package:new_app/view/widget/home/custombutomappbarhome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomescreenControllerImp());
    return GetBuilder<HomescreenControllerImp>(
        builder: (controller) => Scaffold(
            appBar: AppBar(title: const Text("Orders")),
            bottomNavigationBar: const CustomBotomAppBarHome(),
            body: PopScope<Object>(
                canPop: false,
                onPopInvokedWithResult: (bool didPop, Object? result) {
                  if (didPop) {
                    return;
                  }
                  alertExitApp();
                },
                child: controller.listpage.elementAt(controller.currentpage))));
  }
}
