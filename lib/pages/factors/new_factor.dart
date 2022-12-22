import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../responsive.dart';
import '../../utils/configuration.dart';
import '../../widgets/form_master_widget.dart';
import '../../widgets/form_widgets.dart';

class NewFactor extends StatelessWidget {
  NewFactor({Key? key}) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Çarpan Ekle",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          Responsive(
            desktop: Column(children: [
              Row(
                children: [
                  formLabel('İsim'),
                  SizedBox(width: 200, child: formInput("EMAIL")),
                  formLabel('Otel'),
                  SizedBox(width: 100, child: formDropdown("market", [])),
                  formLabel('Renk'),
                  SizedBox(width: 100, child: formDropdown("market", [])),
                  formLabel('Para Birimi'),
                  SizedBox(width: 100, child: formDropdown("market", [])),
                  formLabel('Son Geçerlilik Tarihi'),
                  SizedBox(
                      width: 100,
                      child: formDatePicker("TDATE", InputType.date, formKey)),
                  formLabel('Geçerli Olduğu Pazar'),
                  SizedBox(width: 100, child: formDropdown("market", [])),
                ],
              ),
            ]),
            mobile: Column(
              children: [
                formLabel('İsim'),
                formInput("EMAIL"),
                formLabel('Otel'),
                formDropdown("market", []),
                formLabel('Renk'),
                formDropdown("market", []),
                formLabel('Para Birimi'),
                formDropdown("market", []),
                formLabel('Son Geçerlilik Tarihi'),
                formDatePicker("TDATE", InputType.date, formKey),
                formLabel('Geçerli Olduğu Pazar'),
                formDropdown("market", []),
              ],
            ),
          ),
          Row(children: [
            formLabel('Oda Tipi'),
            SizedBox(width: 200, child: formInput("EMAIL")),
            formLabel('Çarpan'),
            SizedBox(width: 100, child: formDropdown("market", []))
          ]),
          Divider(
            thickness: 1,
            height: defaultPadding,
          ),
          Row(children: [
            formLabel('Oda Tipi'),
            SizedBox(width: 200, child: formInput("EMAIL")),
            formLabel('Çarpan'),
            SizedBox(width: 100, child: formDropdown("market", []))
          ]),
          Divider(
            thickness: 1,
            height: defaultPadding,
          ),
          Row(children: [
            formLabel('Oda Tipi'),
            SizedBox(width: 200, child: formInput("EMAIL")),
            formLabel('Çarpan'),
            SizedBox(width: 100, child: formDropdown("market", []))
          ]),
          Divider(
            thickness: 1,
            height: defaultPadding,
          ),
          Row(children: [
            formLabel('Oda Tipi'),
            SizedBox(width: 200, child: formInput("EMAIL")),
            formLabel('Çarpan'),
            SizedBox(width: 100, child: formDropdown("market", []))
          ]),
          Divider(
            thickness: 1,
            height: defaultPadding,
          ),
          Row(children: [
            formLabel('Oda Tipi'),
            SizedBox(width: 200, child: formInput("EMAIL")),
            formLabel('Çarpan'),
            SizedBox(width: 100, child: formDropdown("market", []))
          ]),
        ]);
  }
}
