import 'package:admin/utils/app_routes.dart';
import 'package:admin/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DontHaveAccountRow extends StatelessWidget {
  const DontHaveAccountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Henüz bir hesabınız yoksa linke tıklayarak üye olabilirsiniz',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black87)),
        defaultButton(
            press: () => Get.toNamed(AppRoutes.profile), text: "ÜYE OL"),
      ],
    );
  }
}
