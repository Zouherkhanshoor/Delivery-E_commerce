import 'package:flutter/material.dart';
import 'package:new_app/controller/tracking_controller.dart';
import 'package:new_app/core/class/handlingdataview.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_app/core/constant/color.dart';
import 'package:new_app/core/functions/getdecode_Polyline.dart';
import 'package:new_app/core/shared/custombutton.dart';

class OrdersTracking extends StatelessWidget {
  const OrdersTracking({super.key});

  @override
  Widget build(BuildContext context) {
    TrackingController controller = Get.put(TrackingController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders Tracking'),
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: GetBuilder<TrackingController>(
              builder: (controller) => HandlingDataView(
                    statusRequest: controller.statusRequest,
                    widget: Column(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            child: GoogleMap(
                              // polylines: controller.polylineset,
                              mapType: MapType.normal,
                              markers: controller.markers.toSet(),
                              initialCameraPosition: controller.cameraPosition!,
                              onMapCreated:
                                  (GoogleMapController controllermap) {
                                controller.gmc = controllermap;
                              },
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            minWidth: 300,
                            color: AppColor.primarycolor,
                            textColor: Colors.white,
                            onPressed: () {
                              controller.donedelivery();
                            },
                            child: const Text("the order has been deliverd"),
                          ),
                        )
                      ],
                    ),
                  ))),
    );
  }
}
