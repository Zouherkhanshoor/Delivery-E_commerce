import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/onboarding_controller.dart';
import 'package:new_app/core/constant/color.dart';

class CustomButtonOnBoarding extends GetView<OnboardingControllerImp> {
  const CustomButtonOnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 60),
      child: MaterialButton(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        onPressed: () {
          controller.next();
        },
        color: AppColor.primarycolor,
        textColor: Colors.white,
        child: Text("8".tr),
      ),
    );
  }
}
