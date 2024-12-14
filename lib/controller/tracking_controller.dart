import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_app/controller/orders/accepted_controller.dart';
import 'package:new_app/core/class/status_request.dart';
import 'package:new_app/core/constant/routes.dart';
import 'package:new_app/core/functions/getdecode_Polyline.dart';
import 'package:new_app/core/services/services.dart';
import 'package:new_app/data/model/ordersmodel.dart';

class TrackingController extends GetxController {
  Set<Polyline> polylineset = {};

  MyServices myServices = Get.find();

  Timer? timer;

  GoogleMapController? gmc;
  StatusRequest statusRequest = StatusRequest.success;
  late OrdersModel ordersmodel;
  CameraPosition? cameraPosition;
  OrdersAcceptedController ordersAcceptedController = Get.find();

  double? deslat;
  double? deslong;

  double? currentlat;
  double? currentlong;

  StreamSubscription<Position>? positionStream;
  List<Marker> markers = [];

  donedelivery() async {
    statusRequest = StatusRequest.loading;
    update();
    await ordersAcceptedController.donedelivery(
        ordersmodel.ordersId!, ordersmodel.ordersUsersid!);
    Get.offAllNamed(AppRoute.homepage);
  }

  getcurrentlocation() {
    cameraPosition = CameraPosition(
      target: LatLng(double.parse(ordersmodel.addressLat!.toString()),
          double.parse(ordersmodel.addressLang!.toString())),
      zoom: 14.4746,
    );

    markers.add(Marker(
        markerId: const MarkerId("destenition"),
        position: LatLng(double.parse(ordersmodel.addressLat!),
            double.parse(ordersmodel.addressLang!))));
    positionStream =
        Geolocator.getPositionStream().listen((Position? position) {
      print("===========================Current position");
      print(position!.latitude);
      print(position.longitude);
      if (gmc != null) {
        gmc!.animateCamera(
            CameraUpdate.newLatLng(LatLng(currentlat!, currentlong!)));
      }

      markers.removeWhere((element) => element.markerId.value == "??");
      markers.add(Marker(
          markerId: const MarkerId("??"),
          position: LatLng(position.latitude, position.longitude)));
      update();
    });
  }

  refreshLocation() async {
    await Future.delayed(Duration(seconds: 2));
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      FirebaseFirestore.instance
          .collection("delivery")
          .doc(ordersmodel.ordersId)
          .set({
        "lat": currentlat,
        "long": currentlong,
        "deliveryid": myServices.sharedPreferences.getString("id")
      });
    });
  }

  // initpolyline() async {
  //   deslat = double.parse(ordersmodel.addressLat!);
  //   deslong = double.parse(ordersmodel.addressLang!);
  //   Future.delayed(Duration(seconds: 1));
  //   polylineset = await getPolyLine(currentlat, currentlong, deslat, deslong);
  //   update();
  // }

  @override
  void onInit() {
    ordersmodel = Get.arguments['ordersmodel'];
    // initpolyline();
    refreshLocation();
    getcurrentlocation();
    super.onInit();
  }

  @override
  void onClose() {
    positionStream!.cancel();
    gmc!.dispose();
    timer!.cancel();
    super.onClose();
  }
}
