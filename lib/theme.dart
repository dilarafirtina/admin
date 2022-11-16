import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: creamColor,
  textTheme: GoogleFonts.ralewayTextTheme(ThemeData.light().textTheme)
      .apply(bodyColor: Colors.black),
  canvasColor: snowColor,
);

ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: bgColor,
    textTheme: GoogleFonts.ralewayTextTheme(ThemeData.dark().textTheme)
        .apply(bodyColor: Colors.white),
    canvasColor: secondaryColor,
    dataTableTheme: DataTableThemeData(
      headingTextStyle: TextStyle(color: detailTextColor),
    ),
    inputDecorationTheme: const InputDecorationTheme(
        filled: false,
        labelStyle: TextStyle(color: Colors.white),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(
              style: BorderStyle.solid,
              color: Color.fromARGB(255, 186, 185, 185)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Color(0xFFcecece)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide:
              BorderSide(style: BorderStyle.solid, color: Color(0xFFcecece)),
        )));
