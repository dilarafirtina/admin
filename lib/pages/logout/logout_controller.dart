import 'package:get/get.dart';
import 'dart:core';

class LogoutController extends GetxController {
  handleEdit() {
    // Get.find<StorageService>().writeStorage("token", null);
    Get.offAllNamed("/");
  }
}
