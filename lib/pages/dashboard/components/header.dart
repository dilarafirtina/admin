import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        if (!Responsive.isDesktop(context))
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: context.read<MenuController>().controlMenu,
          ),
        if (!Responsive.isMobile(context))
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        if (!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
        Expanded(child: HeaderIcons()),
        ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding / 3,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).canvasColor,
        border: Border.all(color: Colors.white10),
      ),
      child: PopupMenuButton(
          color: bgColor,
          offset: Offset(0, 45),
          child: Image.asset(
            "assets/images/profile_pic.png",
            height: 38,
          ),
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  onTap: () => Get.toNamed(AppRoutes.profile),
                  value: 1,
                  child: Text("Profile"),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Item 2'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Item 3'),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Item 4'),
                ),
              ]),
    );
  }
}

class HeaderIcons extends StatelessWidget {
  const HeaderIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
            padding: EdgeInsets.only(left: defaultPadding),
            child: InkWell(onTap: () => {}, child: Icon(Icons.notifications))),
        Container(
            padding: EdgeInsets.only(left: defaultPadding),
            child: InkWell(
              onTap: () => {},
              child: PopupMenuButton(
                  color: bgColor,
                  offset: Offset(0, 45),
                  child: Icon(Icons.settings),
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        PopupMenuItem(
                          value: 1,
                          child: ElevatedButton.icon(
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(
                                horizontal: defaultPadding * 1.5,
                                vertical: defaultPadding /
                                    (Responsive.isMobile(context) ? 2 : 1),
                              ),
                            ),
                            onPressed: () {
                              AdaptiveTheme.of(context).toggleThemeMode();
                            },
                            icon: Icon(Icons.ac_unit_sharp),
                            label: Text("Change Theme"),
                          ),
                        ),
                      ]),
            ))
      ],
    );
  }
}
