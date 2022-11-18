import 'package:get/get.dart';

class ReservationController extends GetxController {
  RxBool sortHotelAsc = true.obs;
  RxBool sortNameAsc = true.obs;
  RxBool sortUserAsc = true.obs;
  RxBool sortOperatorAsc = true.obs;
  RxBool sortVoucherAsc = true.obs;
  RxBool sortRoomAsc = true.obs;
  RxBool sortVoucherDateAsc = true.obs;
  RxBool sortCheckInDateAsc = true.obs;
  RxBool sortCheckoutDateAsc = true.obs;
  RxBool sortBonusAsc = true.obs;
  RxBool sortStatusAsc = true.obs;
  RxBool sortAmountAsc = true.obs;
  RxBool sortAgencyAsc = true.obs;

  RxBool sortAsc = true.obs;
  RxInt sortColumnIndex = 0.obs;

  //  void onInit() {
  //   loadItems();
  //   super.onInit();
  // }
}
