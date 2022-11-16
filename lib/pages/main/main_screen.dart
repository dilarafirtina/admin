import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/models/Reservation.dart';
import 'package:admin/models/Bonus.dart';
import 'package:admin/pages/bonus/bonus_grid.dart';
import 'package:admin/pages/campaigns/campaign_grid.dart';
import 'package:admin/pages/campaigns/new_campaign.dart';
import 'package:admin/pages/dashboard/components/header.dart';
import 'package:admin/pages/main/page_controller.dart';
import 'package:admin/pages/reservations/reservations_grid.dart';
import 'package:admin/responsive.dart';
import 'package:admin/pages/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  final MyTabController _tabx = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(defaultPadding),
                    child: Obx(() => Header(title: headerTitle.value))),
                Expanded(
                  child: TabBarView(
                    controller: _tabx.controller,
                    physics: NeverScrollableScrollPhysics(),
                    children: <Widget>[
                      DashboardScreen(),
                      reservationGrid(context, preConfirmed),
                      reservationGrid(context, preConfirmed),
                      reservationGrid(context, completed),
                      reservationGrid(context, cancelled),
                      bonusGrid(context, bonusRequests),
                      bonusGrid(context, bonusPreConfirmed),
                      bonusGrid(context, bonusCompleted),
                      bonusGrid(context, bonusCancelled),
                      NewCampaign(),
                      campaignGrid(context)
                    ],
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
