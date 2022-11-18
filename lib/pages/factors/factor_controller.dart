import 'package:get/get.dart';

class FactorController extends GetxController {
  RxBool sortHotelAsc = true.obs;
  RxBool sortNameAsc = true.obs;
  RxBool sortCurrencyAsc = true.obs;
  RxBool sortDueDateAsc = true.obs;
  RxBool sortMarketAsc = true.obs;
  RxBool sortColorAsc = true.obs;
  RxBool sortRecordUserAsc = true.obs;

  RxBool sortAsc = true.obs;
  RxInt sortColumnIndex = 0.obs;

  //  void onInit() {
  //   loadItems();
  //   super.onInit();
  // }
}
