import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/homecontroller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp controller = Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
      builder: (controller) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [],
          )),
    );
  }
}

// https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/star.svg
