import 'package:flutter/material.dart';

import 'widgets/profile_header.dart';
import 'widgets/profile_menu_options.dart';

class AccountMenuView extends StatelessWidget {
  const AccountMenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 768),
        color: Colors.grey.shade50,
        child: Column(
          children: const [
            ProfileHeader(),
            Expanded(
                child: SingleChildScrollView(
              child: ProfileMenuOptions(),
            )),
          ],
        ),
      ),
    );
  }
}
