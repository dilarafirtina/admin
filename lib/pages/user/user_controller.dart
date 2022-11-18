import 'package:get/get.dart';

class UserController extends GetxController {
  RxBool sortCountryAsc = true.obs;
  RxBool sortNameAsc = true.obs;
  RxBool sortOperatorAsc = true.obs;
  RxBool sortCityAsc = true.obs;
  RxBool sortRegisterDateAsc = true.obs;
  RxBool sortEmailAsc = true.obs;
  RxBool sortKVKKAsc = true.obs;
  RxBool sortAgencyAsc = true.obs;

  RxBool sortAsc = true.obs;
  RxInt sortColumnIndex = 0.obs;

  //  void onInit() {
  //   loadItems();
  //   super.onInit();
  // }
}
