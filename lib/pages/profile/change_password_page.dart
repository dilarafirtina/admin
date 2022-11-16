import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:admin/constants.dart';
import 'package:admin/widgets/form_master_widget.dart';
import 'package:admin/widgets/form_widgets.dart';
import 'package:admin/widgets/widgets.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({Key? key}) : super(key: key);
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Şifre Değiştir",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          formLabel('Güncel şifre'),
          formInput("REMARKS"),
          formLabel('Yeni Şifre'),
          formInput("REMARKS"),
          formLabel('Yeni Şifreyi Tekrar Yazın'),
          formInput("REMARKS"),
        ]);
  }
}
