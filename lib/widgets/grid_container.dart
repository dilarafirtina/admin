import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';

Widget gridContainer(
    {BuildContext? context,
    String? title,
    List? data,
    required List<Widget> child}) {
  return Scaffold(
    body: Container(
      width: double.infinity,
      height: MediaQuery.of(context!).size.height - 200,
      decoration: BoxDecoration(
        color: Theme.of(context!).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          gridHeader(),
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
                            Column(children: child),
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
