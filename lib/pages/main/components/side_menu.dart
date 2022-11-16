import 'package:admin/constants.dart';
import 'package:admin/pages/main/page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

final MyTabController _tabx = Get.put(MyTabController());

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("assets/images/logo.png"),
                  Text("Kemer | Antalya | Türkiye")
                ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: defaultPadding, top: defaultPadding),
                    child: Text(
                      "MENU",
                      style: TextStyle(color: detailTextColor),
                    ),
                  ),
                  DrawerListTile(
                    title: "Dashboard",
                    icon: Icons.dashboard,
                    selected: _tabx.controller.index == 0 ? true : false,
                    press: () {
                      _tabx.controller.animateTo(0);
                      headerTitle.value = "Dashboard";
                    },
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.file_open, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Rezervasyonlar",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Talepler",
                        selected: _tabx.controller.index == 1 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(1);
                          headerTitle.value = "Rezervason Talepleri";
                        },
                      ),
                      DrawerListTile(
                        title: "Ön Onaylılar",
                        selected: _tabx.controller.index == 2 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(2);
                          headerTitle.value = "Ön Onaylılar";
                        },
                      ),
                      DrawerListTile(
                        title: "Tamamlananlar",
                        selected: _tabx.controller.index == 3 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(3);
                          headerTitle.value = "Tamamlananlar";
                        },
                      ),
                      DrawerListTile(
                        title: "İptaller",
                        selected: _tabx.controller.index == 4 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(4);
                          headerTitle.value = "İptaller";
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.star, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Puan Kullanımı",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Talepler",
                        selected: _tabx.controller.index == 5 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(5);
                          headerTitle.value = "Talepler";
                        },
                      ),
                      DrawerListTile(
                        title: "Onaylananlar",
                        selected: _tabx.controller.index == 6 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(6);
                          headerTitle.value = "Onaylananlar";
                        },
                      ),
                      DrawerListTile(
                        title: "Tamamlananlar",
                        selected: _tabx.controller.index == 7 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(7);
                          headerTitle.value = "Tamamlananlar";
                        },
                      ),
                      DrawerListTile(
                        title: "İptaller",
                        selected: _tabx.controller.index == 8 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(8);
                          headerTitle.value = "İptaller";
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.sell, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Kampanyalar",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Yeni",
                        selected: _tabx.controller.index == 9 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(9);
                          headerTitle.value = "Yeni";
                        },
                      ),
                      DrawerListTile(
                        title: "Liste",
                        selected: _tabx.controller.index == 10 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(10);
                          headerTitle.value = "Liste";
                        },
                      ),
                    ],
                  ),
                  DrawerListTile(
                    title: "Raporlar",
                    selected: _tabx.controller.index == 11 ? true : false,
                    icon: Icons.graphic_eq,
                    press: () {
                      _tabx.controller.animateTo(11);
                      headerTitle.value = "Raporlar";
                    },
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.people, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Kullanıcılar",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Talepler",
                        selected: _tabx.controller.index == 12 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(12);
                          headerTitle.value = "Talepler";
                        },
                      ),
                      DrawerListTile(
                        title: "Onaylılar",
                        selected: _tabx.controller.index == 13 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(13);
                          headerTitle.value = "Onaylılar";
                        },
                      ),
                      DrawerListTile(
                        title: "Reddedilenler",
                        selected: _tabx.controller.index == 14 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(14);
                          headerTitle.value = "Reddedilenler";
                        },
                      ),
                      DrawerListTile(
                        title: "Kara Liste",
                        selected: _tabx.controller.index == 15 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(15);
                          headerTitle.value = "Kara Liste";
                        },
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: defaultPadding, top: defaultPadding),
                    child: Text(
                      "AYARLAR",
                      style: TextStyle(color: detailTextColor),
                    ),
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.hotel, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Oteller",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Yeni",
                        selected: _tabx.controller.index == 16 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(16);
                          headerTitle.value = "Yeni";
                        },
                      ),
                      DrawerListTile(
                        title: "Liste",
                        selected: _tabx.controller.index == 17 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(17);
                          headerTitle.value = "Liste";
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.account_box, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Çarpan",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Yeni",
                        selected: _tabx.controller.index == 18 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(18);
                          headerTitle.value = "Yeni";
                        },
                      ),
                      DrawerListTile(
                        title: "Liste",
                        selected: _tabx.controller.index == 19 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(19);
                          headerTitle.value = "Liste";
                        },
                      ),
                      DrawerListTile(
                        title: "Takvim",
                        selected: _tabx.controller.index == 20 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(20);
                          headerTitle.value = "Takvim";
                        },
                      ),
                    ],
                  ),
                  ExpansionTile(
                    tilePadding: EdgeInsets.only(
                        left: defaultPadding, right: defaultPadding),
                    title: Row(children: [
                      Icon(Icons.work, size: 16),
                      SizedBox(
                        width: defaultPadding,
                      ),
                      Text(
                        "Operatörler",
                        textScaleFactor: 0,
                      )
                    ]),
                    children: <Widget>[
                      DrawerListTile(
                        title: "Yeni",
                        selected: _tabx.controller.index == 21 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(21);
                          headerTitle.value = "Yeni";
                        },
                      ),
                      DrawerListTile(
                        title: "Liste",
                        selected: _tabx.controller.index == 22 ? true : false,
                        press: () {
                          _tabx.controller.animateTo(22);
                          headerTitle.value = "Liste";
                        },
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    this.icon,
    required this.press,
    required this.selected,
  }) : super(key: key);

  final String title;
  final VoidCallback press;
  final IconData? icon;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      selected: selected,
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: Colors.white54,
        size: 16,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
