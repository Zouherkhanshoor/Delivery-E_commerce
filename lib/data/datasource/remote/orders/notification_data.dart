import 'package:new_app/core/class/crud.dart';
import 'package:new_app/linkapi.dart';

class NotificationData {
  Crud crud;

  NotificationData(this.crud);

  getData(String id) async {
    var response = await crud.postData(AppLink.notification, {"id": id});
    return response.fold((l) => l, (r) => r);
  }
}
