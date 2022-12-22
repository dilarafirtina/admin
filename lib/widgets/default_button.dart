import 'package:flutter/material.dart';

import '../utils/configuration.dart';

Widget defaultButton({
  final String? text,
  final Function? press,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
    child: SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Color.fromARGB(255, 186, 185, 185))),
          backgroundColor: Colors.transparent,
        ),
        onPressed: press as void Function()?,
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
