import 'package:admin/pages/dashboard/dashboard_screen.dart';
import 'package:admin/pages/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    // demo time it required to load inital data
    Future.delayed(Duration(seconds: 1),
        () => Get.to(MainScreen(child: DashboardScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset('images/opex.png'),
      ),
    );
  }
}
