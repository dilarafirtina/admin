import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'dart:core';

import '../../utils/utils.dart';

class ProfileController extends GetxController {
  // var item = Menu(id: 0, name: "");
  // var form = FormMenu();
  int id = 0;
  var load = false.obs;
  late Map<String, dynamic> formData = {};
  var firstName = "".obs;
  var lastName = "".obs;
  var birthDate = null.obs;
  var email = "".obs;
  var phone = "".obs;

  var obscureText = true.obs;
  var obscureText1 = true.obs;

  @override
  void onReady() {
    loadItem();
    super.onReady();
  }

  loadItem() async {
    // checkLogin();
    // try {
    //   var storage = Get.find<StorageService>();
    //   firstName.value = await storage.readStorage("firstName");
    //   lastName.value = await storage.readStorage("lastName");
    //   birthDate.value = await storage.readStorage("birthDate");
    //   email.value = await storage.readStorage("email");
    //   phone.value = await storage.readStorage("phone");
    // } catch (e) {}
  }

  handleSave(GlobalKey<FormBuilderState> formKey) async {
    if (formKey.currentState!.saveAndValidate()) {
      Map<String, dynamic> formData = {};
      var data = formKey.currentState!.value;
      data.forEach((key, value) {
        formData[key] = value;
      });

      if (formData["PASSWORD"] == "") {
        showAlert("Enter your password.");
        return;
      }

      if (formData["VERIFYPASSWORD"] == "") {
        showAlert("Verify your password.");
        return;
      }

      if (formData["VERIFYPASSWORD"] != formData["PASSWORD"]) {
        showAlert("Your passwords does not match. Please check.");
        return;
      }

      // var storage = Get.find<StorageService>();
      // //formData["COMPANYID"] = 1;
      // formData["RUSERID"] = await storage.readStorage("userId");
      // formData["REGISTERID"] = await storage.readStorage("registerId");
      // formData["LANGUAGE"] = await storage.readStorage("lang");

      // List<dynamic> response =
      //     await execApiToken("GuestAppClientInsert", "CLIENT", formData);
      // checkExecResponse(response);
    }
  }
}
