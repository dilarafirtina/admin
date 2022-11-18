import 'package:admin/widgets/photo_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:admin/widgets/form_master_widget.dart';
import 'package:admin/widgets/form_widgets.dart';

class NewOperator extends StatelessWidget {
  NewOperator({Key? key}) : super(key: key);

  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Yeni Kampanya Kayıt",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          formLabel('İsim'),
          SizedBox(width: 300, child: formInput("EMAIL")),
          formLabel('Milliyeti'),
          SizedBox(
            width: 300,
            child: formDropdown("Nationality", []),
          ),
          formLabel('Geçerli Olduğu Pazar'),
          SizedBox(
            width: 300,
            child: formDropdown("market", []),
          ),
        ]);
  }
}
