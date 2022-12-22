import '../utils/configuration.dart';
import 'package:flutter/material.dart';

import 'widgets.dart';

Widget gridContainer({
  BuildContext? context,
  String? title,
  List? data,
  required List<Widget> child,
}) {
  return Scaffold(
    body: Container(
      margin: EdgeInsets.all(defaultPadding),
      width: double.infinity,
      height: MediaQuery.of(context!).size.height - 120,
      decoration: BoxDecoration(
        color: Theme.of(context!).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          gridHeader(title),
          Divider(
            thickness: 1,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                            height: MediaQuery.of(context!).size.height,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: child))
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
