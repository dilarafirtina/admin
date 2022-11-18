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
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context!).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Divider(
            thickness: 1,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 16,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FormBuilder(
                          key: key,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: child),
                        ),
                        formSaveButton(onTap)
                      ],
                    ),
                  ),
                )),
              ],
            ),
          )
        ],
      ),
    ),
  );
}
