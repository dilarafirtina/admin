import 'package:admin/widgets/photo_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:admin/widgets/form_master_widget.dart';
import 'package:admin/widgets/form_widgets.dart';

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
          formInput("EMAIL"),
          formLabel('Başlama Tarihi'),
          formDatePicker("TDATE", InputType.date, formKey),
          formLabel('Bitiş Tarihi'),
          formDatePicker("TDATE", InputType.date, formKey),
          formLabel('Dosya Yükle'),
          SizedBox(
            width: 150,
            height: 50,
            child: fileUploadButton("Fatura Yükle"),
          ),
        ]);
  }
}
