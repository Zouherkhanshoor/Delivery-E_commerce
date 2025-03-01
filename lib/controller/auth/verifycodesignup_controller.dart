import 'package:get/get.dart';
import 'package:new_app/core/class/status_request.dart';
import 'package:new_app/core/constant/routes.dart';
import 'package:new_app/core/functions/handlingdatacontroller.dart';
import 'package:new_app/data/datasource/remote/auth/verifycodesignup.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  checkCode();
  goToSuccessSignUp(String verifycodesignup);
  reSend();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  VerifyCodeSignUpData verifyCodeSignUpData = VerifyCodeSignUpData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;
  String? email;

  @override
  checkCode() {}

  @override
  goToSuccessSignUp(verifycodesignup) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifyCodeSignUpData.postdata(email!, verifycodesignup);
    print("===============================controller $response ");

    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.successSignUp);
      } else {
        Get.defaultDialog(
            title: "Warnning", middleText: "Verify code Not Correct");
        statusRequest = StatusRequest.failuer;
      }
    }
    update();
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
    super.onInit();
  }

  @override
  reSend() {
    verifyCodeSignUpData.reSendData(email!);
  }
}
