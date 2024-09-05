import 'package:new_app/core/class/crud.dart';
import 'package:new_app/linkapi.dart';

class FavoriteData {
  Crud crud;

  FavoriteData(this.crud);

  addFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(AppLink.favoriteAdd,
        {"usersid": usersid.toString(), "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }

  removeFavorite(String usersid, String itemsid) async {
    var response = await crud.postData(AppLink.favoriteRemove,
        {"usersid": usersid.toString(), "itemsid": itemsid});
    return response.fold((l) => l, (r) => r);
  }
}
