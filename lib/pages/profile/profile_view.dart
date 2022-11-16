import 'dart:html';

import 'package:admin/constants.dart';
import 'package:admin/widgets/photo_upload.dart';
import 'package:admin/pages/profile/widgets/radio_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:admin/widgets/form_master_widget.dart';
import 'package:admin/widgets/form_widgets.dart';
import 'profile_controller.dart';

class ProfileView extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  ProfileView({Key? key}) : super(key: key);

  var kvkk = false.obs;
  var agreeement = false.obs;

  @override
  Widget build(BuildContext context) {
    final ProfileController _controller = Get.find();
    return formMaster(
        context: context,
        title: "Yeni Üye Kayıt Formu",
        formData: _controller.formData,
        key: formKey,
        onTap: () => _controller.handleSave(formKey),
        child: <Widget>[
          formLabel('Cinsiyet'),
          genderRadioButtons(),
          formLabel('Adı'),
          formInput("FIRSTNAME",
              initialValue: _controller.firstName.value, isRequired: true),
          formLabel('Soyadı'),
          formInput("LASTNAME",
              initialValue: _controller.lastName.value, isRequired: true),
          formLabel('Görevi'),
          formInput("TASK"),
          formLabel('Kişisel Mail Adresi'),
          formInput("EMAIL"), //initialValue: _controller.email.value
          formLabel('Şifre'),
          Obx(() => formPassword("PASSWORD", _controller.obscureText.value,
              onTap: () => _controller.obscureText.value =
                  !_controller.obscureText.value)),
          formLabel('Şifreyi Tekrarlayın'),
          Obx(() => formPassword(
              "VERIFYPASSWORD", _controller.obscureText1.value,
              onTap: () => _controller.obscureText1.value =
                  !_controller.obscureText1.value)),
          formLabel('Acenta Mail Adresi'),
          formInput("admin_EMAIL", isRequired: true),
          formLabel('Acenta Adı'),
          formInput("admin_NAME", isRequired: true),
          formLabel('Acenta ID'),
          formInput("admin_ID", isRequired: true),
          formLabel('Acenta Adresi'),
          formInputArea("admin_ADDRESS"),
          formLabel('Acenta Şehri'),
          formDropdown("admin_CITY", []),
          formLabel('Acenta Ülkesi'),
          formDropdown("admin_COUNTRY", []),
          formLabel('Acenta Telefonu' + ' *'),
          InternationalPhoneNumberInput(
            onInputChanged: (PhoneNumber number) {
              //print(number.phoneNumber);
            },
            onInputValidated: (bool value) {
              //print(value);
            },
            selectorConfig: const SelectorConfig(
              selectorType: PhoneInputSelectorType.DIALOG,
              setSelectorButtonAsPrefixIcon: false,
            ),
            ignoreBlank: false,
            // inputDecoration: const InputDecoration(
            //   border: UnderlineInputBorder(
            //     borderSide: BorderSide(),
            //   ),
            // ),
            //inputBorder: InputBorder.none,
            autoValidateMode: AutovalidateMode.disabled,
            selectorTextStyle:
                const TextStyle(color: Colors.black, fontSize: 16),
            initialValue: PhoneNumber(
                isoCode: 'TR', phoneNumber: _controller.phone.value),
            //textFieldController: controller,
            formatInput: false,
            keyboardType: TextInputType.phone,
            //inputBorder: const OutlineInputBorder(),
            onSaved: (PhoneNumber number) {
              _controller.formData["PHONE"] = number.phoneNumber;
              //print('On Saved: $number');
            },
          ),
          formLabel('Acenta Sahibinin Adı'),
          formInput("admin_OWNER", isRequired: true),
          //formInput("PHONE", initialValue: _controller.phone.value),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("KVKK"),
                  Obx(
                    () => Checkbox(
                      autofocus: false,
                      activeColor: Colors.grey,
                      checkColor: Colors.white,
                      value: kvkk.value,
                      onChanged: (value) {
                        kvkk.value = value!;
                      },
                    ),
                  ),
                ],
              ),
              fileUploadButton("Profil Resmi Yükle"),
            ],
          ),
          Row(
            children: [
              const Text("NG Bonus Sözleşmesi"),
              Obx(
                () => Checkbox(
                  autofocus: false,
                  activeColor: Colors.grey,
                  checkColor: Colors.white,
                  value: agreeement.value,
                  onChanged: (value) {
                    agreeement.value = value!;
                  },
                ),
              ),
            ],
          ),

          //@GDPR BIT=null,
          //@EMAILSEND BIT=NULL,
        ]);
  }
}
