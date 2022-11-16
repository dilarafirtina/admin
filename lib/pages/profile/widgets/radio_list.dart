import 'package:flutter/material.dart';
import 'package:get/get.dart';

var gender = "".obs;

@override
Widget genderRadioButtons() {
  return Container(
    alignment: Alignment.topLeft,
    height: 40,
    child: Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: RadioListTile(
              contentPadding: EdgeInsets.all(0),
              activeColor: Colors.black,
              title: const Text('Kadın'),
              value: "female",
              groupValue: gender.value,
              onChanged: (value) {
                gender.value = value.toString();
              },
            ),
          ),
          Expanded(
            child: RadioListTile(
              activeColor: Colors.black,
              title: const Text('Erkek'),
              value: "male",
              groupValue: gender.value,
              onChanged: (value) {
                gender.value = value.toString();
              },
            ),
          ),
        ],
      ),
    ),
  );
}
