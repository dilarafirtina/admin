import 'package:flutter/material.dart';
import 'package:get/get.dart';

RxInt active = 0.obs;
RxString headerTitle = "Dashboard".obs;

class MyTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void onInit() {
    super.onInit();
    controller = TabController(vsync: this, length: 23);
    active.value = controller.index;
  }
}
