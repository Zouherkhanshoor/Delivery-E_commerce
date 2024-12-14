import 'package:get/get.dart';
import 'package:new_app/core/constant/routes.dart';
import 'package:new_app/core/middleware/mymiddleware.dart';
import 'package:new_app/view/screen/auth/forgetpassword.dart';
import 'package:new_app/view/screen/auth/login.dart';
import 'package:new_app/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:new_app/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:new_app/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:new_app/view/screen/homescreen.dart';
import 'package:new_app/view/screen/language.dart';
import 'package:new_app/view/screen/orders/details.dart';
import 'package:new_app/view/screen/orders/tracking.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),

  // GetPage(name: "/", page: () => const ProductDetails()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  GetPage(name: AppRoute.tracking, page: () => const OrdersTracking()),
];
