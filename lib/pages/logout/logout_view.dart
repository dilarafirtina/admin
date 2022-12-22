import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_routes.dart';
import '../../utils/configuration.dart';
import '../../widgets/default_button.dart';
import '../../widgets/networkimage_widget.dart';
import '../../widgets/wave.dart';
import 'logout_controller.dart';

class LogoutView extends StatelessWidget {
  LogoutView({Key? key}) : super(key: key);
  final LogoutController _controller = Get.put(LogoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          constraints: const BoxConstraints(maxWidth: 768),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipper(),
                    child: Container(
                      color: Colors.grey.shade100,
                      height: 200,
                      width: double.infinity,
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                          child: Text("We are sorry to see you go!",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        cachedNetworkImage(
                          bonusLogo,
                          BoxFit.contain,
                          'logout',
                        ),
                        SizedBox(height: 20),
                        Padding(
                            padding: EdgeInsets.all(20),
                            child: defaultButton(
                                text: "Continue",
                                press: () => Get.toNamed(AppRoutes.home)))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
