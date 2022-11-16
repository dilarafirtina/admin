import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/not_found_view.dart';
import 'package:admin/pages/main/main_screen.dart';
import 'package:admin/routes.dart';
import 'package:admin/theme.dart';
import 'package:admin/utils/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: AdaptiveThemeMode.dark,
      builder: (theme, darkTheme) => GetMaterialApp(
        scrollBehavior: MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.mouse,
            PointerDeviceKind.touch,
            PointerDeviceKind.stylus,
            PointerDeviceKind.unknown
          },
        ),
        title: 'Adaptive Theme Demo',
        theme: theme,
        darkTheme: darkTheme,
        debugShowCheckedModeBanner: false,
        getPages: Routes.routes,
        unknownRoute: GetPage(
            name: AppRoutes.notFoundPage, page: () => const UnknownView()),
        home: MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => MenuController(),
            ),
          ],
          child: MainScreen(),
        ),
      ),
    );
  }
}
