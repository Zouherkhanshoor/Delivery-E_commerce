class AppLink {
  static const String server = "http://192.168.1.102/ecommerce";
  static const String imagestatic = "http://192.168.1.102/ecommerce/upload";
  static const String imageCategories = "$imagestatic/categories";
  static const String imageItems = "$imagestatic/items";
  //==================================================//
  static const String test = "$server/test.php";
  static const String notification = "$server/notification.php";

  // =======================Auth======================= //

  static const String signUp = "$server/delivery/auth/signup.php";
  static const String login = "$server/delivery/auth/login.php";
  static const String verifyCodeSignUp = "$server/delivery/auth/verifycode.php";
  static const String resend = "$server/delivery/auth/resend.php";

  // ===============================forgetpassword==================//

  static const String checkEmail =
      "$server/delivery/forgetpassword/checkemail.php";
  static const String resetPassword =
      "$server/delivery/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword =
      "$server/delivery/forgetpassword/verifycode.php";

  // ====================home

  static const String homepage = "$server/home.php";

  // ====================items
  static const String items = "$server/items/items.php";
  static const String searchitems = "$server/items/search.php";

  // ====================Favorite

  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String favoriteDelete =
      "$server/favorite/deletefromfavorite.php";

  // ====================Cart
  static const String cartview = "$server/cart/view.php";
  static const String cartadd = "$server/cart/add.php";
  static const String cartdelete = "$server/cart/delete.php";
  static const String cartgetcountitems = "$server/cart/getcountitems.php";

  // ====================Address

  static const String addressView = "$server/address/view.php";
  static const String addressAdd = "$server/address/add.php";
  static const String addressEdit = "$server/address/edit.php";
  static const String addressDelete = "$server/address/delete.php";

  // ==================coupon

  static const String checkcoupon = "$server/coupon/checkcoupon.php";

  // ==================Orders

  static const String viewpendingOrders = "$server/delivery/orders/pending.php";
  static const String viewacceptedOrders =
      "$server/delivery/orders/accepted.php";
  static const String approveOrders = "$server/delivery/orders/approve.php";
  static const String viewarchiveOrders = "$server/delivery/orders/archive.php";
  static const String detailsOrders = "$server/delivery/orders/details.php";
  static const String doneOrders = "$server/delivery/orders/done.php";
  // ==================offers

  static const String offers = "$server/offers.php";
  static const String rating = "$server/rating.php";
}
