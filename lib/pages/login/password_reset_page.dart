import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_routes.dart';
import '../../utils/configuration.dart';
import '../../widgets/default_button.dart';
import '../../widgets/widgets.dart';
import 'widgets/login_header.dart';

class PasswordResetPage extends StatelessWidget {
  const PasswordResetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(""),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 768),
            child: Column(
              children: [
                LoginPageHeader(),
                Container(
                  margin: const EdgeInsets.all(defaultPadding),
                  padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding,
                    vertical: defaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add New password',
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: defaultPadding),
                      const Text("New Password"),
                      const SizedBox(height: 8),
                      TextFormField(
                        autofocus: true,
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: defaultPadding),
                      const Text("Confirm Password"),
                      const SizedBox(height: 8),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: defaultPadding),
                      SizedBox(
                          width: double.infinity,
                          child: defaultButton(
                              press: () => {
                                    showToastMessage("success", "Yayyy!",
                                        "Password has been reset successfully!"),
                                    Get.toNamed(AppRoutes.home)
                                  },
                              text: "Done")),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
