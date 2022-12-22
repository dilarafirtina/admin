import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../utils/configuration.dart';
import '../../widgets/form_master_widget.dart';
import '../../widgets/form_widgets.dart';

class ForgetPasswordPage extends StatelessWidget {
  ForgetPasswordPage({Key? key}) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Şifremi Unuttum",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          SizedBox(height: defaultPadding * 2),
          Text(
              "Lütfen e-mail adresinii giriniz. Size şifre sıfırlama linki göndereceğiz."),
          SizedBox(height: defaultPadding * 2),
          formLabel('E-Mail'),
          formInput("EMAIL"),
        ]);
  }
}
