import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_routes.dart';
import '../../../utils/configuration.dart';
import 'profile_list_tile.dart';

class ProfileMenuOptions extends StatelessWidget {
  const ProfileMenuOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(defaultPadding),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            offset: const Offset(0, 2),
            color: Colors.black.withOpacity(0.04),
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          ProfileListTile(
            title: 'Profilim',
            icon: const Icon(Icons.person),
            onTap: () => Get.toNamed(AppRoutes.profile),
          ),
          const Divider(thickness: 0.1),
          ProfileListTile(
              title: 'Şifre Değiştir',
              icon: const Icon(Icons.password),
              onTap: () => Get.toNamed(AppRoutes.changePassword)),
          const Divider(thickness: 0.1),
        ],
      ),
    );
  }
}
