import '../../utils/configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../widgets/form_master_widget.dart';
import '../../widgets/form_widgets.dart';

class UserEdit extends StatelessWidget {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return formMaster(
        context: context,
        title: "Kullanıcı Detay",
        key: formKey,
        onTap: () => {},
        child: <Widget>[
          Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      formLabel("Cinsiyet"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("Erkek")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Ad"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("Caner")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Kişisel Mail Adresi"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("canersonmez@gmail.com")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Şifre"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("**********")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Mail Adresi"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("caner@penusula.com")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Adı"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("PENISULA")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Adresi"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("-")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Şehri"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("Antalya")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Ülkesi"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("Türkiye")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Telefonu"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("+90 242 367 83 83")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("Acenta Sahibinin Adı"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      formInput("Mahmut Orhan")
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("KVKK"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      SizedBox(
                        width: 250,
                        child: Row(
                          children: [
                            Checkbox(
                                autofocus: false,
                                activeColor: kSecondaryColor,
                                checkColor: Colors.white,
                                value: true,
                                onChanged: (value) => {false}),
                            SizedBox(width: defaultPadding),
                            formInput("Kabul Ediyorum")
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    children: [
                      formLabel("NG Bonus Sözleşmesi"),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      SizedBox(
                        width: 250,
                        child: Row(
                          children: [
                            Checkbox(
                                autofocus: false,
                                activeColor: kSecondaryColor,
                                checkColor: Colors.white,
                                value: true,
                                onChanged: (value) => {false}),
                            SizedBox(width: defaultPadding),
                            formInput("Kabul Ediyorum")
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ))
        ]);
  }
}
