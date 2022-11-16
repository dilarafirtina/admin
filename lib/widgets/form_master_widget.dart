import 'package:admin/constants.dart';
import 'package:admin/widgets/background_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:admin/widgets/form_widgets.dart';

Widget formMaster(
    {BuildContext? context,
    required String title,
    required GlobalKey<FormBuilderState> key,
    Map<String, dynamic>? formData,
    required Function()? onTap,
    required List<Widget> child}) {
  return Scaffold(
    body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context!).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FormBuilder(
                              key: key,
                              child: Column(children: child),
                            ),
                            formSaveButton(onTap)
                          ],
                        ),
                      ),
                    )),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
