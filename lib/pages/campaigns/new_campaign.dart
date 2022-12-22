import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_master_widget.dart';
import '../../widgets/form_widgets.dart';
import '../../widgets/photo_upload.dart';

class NewCampaign extends StatelessWidget {
  NewCampaign({Key? key}) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Yeni Kampanya Kayıt",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          formLabel('Kampanya İsmi'),
          SizedBox(width: 300, child: formInput("EMAIL")),
          formLabel('Başlama Tarihi'),
          SizedBox(
              width: 150,
              child: formDatePicker("TDATE", InputType.date, formKey)),
          formLabel('Bitiş Tarihi'),
          SizedBox(
              width: 150,
              child: formDatePicker("TDATE", InputType.date, formKey)),
          formLabel('Dosya Yükle'),
          SizedBox(
            width: 150,
            height: 50,
            child: fileUploadButton("Fatura Yükle"),
          ),
        ]);
  }
}
