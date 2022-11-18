import 'package:get/get.dart';

class OperatorController extends GetxController {
  RxBool sortNameAsc = true.obs;
  RxBool sortNationalityAsc = true.obs;
  RxBool sortMarketAsc = true.obs;

  RxBool sortAsc = true.obs;
  RxInt sortColumnIndex = 0.obs;

  //  void onInit() {
  //   loadItems();
  //   super.onInit();
  // }
}
