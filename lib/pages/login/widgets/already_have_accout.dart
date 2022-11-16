import 'package:admin/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Already Have Account?'),
        TextButton(
          onPressed: () => Get.toNamed(AppRoutes.login),
          child: const Text('Log In'),
        ),
      ],
    );
  }
}
