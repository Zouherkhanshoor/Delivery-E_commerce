import 'package:get/get.dart';
import 'package:new_app/controller/auth/signup_controller.dart';
import 'package:new_app/core/class/crud.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImp(), fenix: true);
    Get.put(Crud());
  }
}
