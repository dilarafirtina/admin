import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin/not_found_view.dart';
import 'package:admin/pages/dashboard/dashboard_screen.dart';
import 'package:admin/pages/main/main_screen.dart';
import 'package:admin/routes.dart';
import 'package:admin/utils/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme/Themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          title: 'Admin',
          theme: theme,
          darkTheme: darkTheme,
          debugShowCheckedModeBanner: false,
          getPages: Routes.routes,
          initialRoute: Routes.INITIAL,
          unknownRoute: GetPage(
              name: AppRoutes.notFoundPage, page: () => const UnknownView()),
          home: MainScreen(child: DashboardScreen())),
    );
  }
}
