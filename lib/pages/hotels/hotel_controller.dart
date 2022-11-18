import 'package:get/get.dart';

class HotelController extends GetxController {
  RxBool sortOrderAsc = true.obs;
  RxBool sortNameAsc = true.obs;
  RxBool sortStartDateAsc = true.obs;
  RxBool sortEndDateAsc = true.obs;

  RxBool sortAsc = true.obs;
  RxInt sortColumnIndex = 0.obs;

  //  void onInit() {
  //   loadItems();
  //   super.onInit();
  // }
}
