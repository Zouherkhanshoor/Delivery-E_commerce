import 'package:new_app/core/class/crud.dart';
import 'package:new_app/linkapi.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getdata() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }
}
