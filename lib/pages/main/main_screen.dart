import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuController.dart';
import 'package:admin/models/reservation_model.dart';
import 'package:admin/models/bonus_model.dart';
import 'package:admin/models/user_model.dart';
import 'package:admin/pages/bonus/bonus_grid.dart';
import 'package:admin/pages/campaigns/campaign_grid.dart';
import 'package:admin/pages/campaigns/new_campaign.dart';
import 'package:admin/pages/dashboard/components/header.dart';
import 'package:admin/pages/factors/factor_calendar.dart';
import 'package:admin/pages/factors/factor_grid.dart';
import 'package:admin/pages/factors/new_factor.dart';
import 'package:admin/pages/hotels/hotel_grid.dart';
import 'package:admin/pages/hotels/new_hotel.dart';
import 'package:admin/pages/main/page_controller.dart';
import 'package:admin/pages/operators/new_operator.dart';
import 'package:admin/pages/operators/operator_grid.dart';
import 'package:admin/pages/reports/reports.dart';
import 'package:admin/pages/reservations/reservations_grid.dart';
import 'package:admin/pages/user/user_detail.dart';
import 'package:admin/pages/user/user_grid.dart';
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
                      reservationGrid(
                          context, preConfirmed, "Rezervasyon Talepleri"),
                      reservationGrid(
                          context, preConfirmed, "Ön Onaylı Rezervasyonlar"),
                      reservationGrid(
                          context, completed, "Tamamlanan Rezervasyonlar"),
                      reservationGrid(
                          context, cancelled, "İptal Edilen Rezervasyonlar"),
                      bonusGrid(
                          context, bonusRequests, "Harcama Kullanım Talepleri"),
                      bonusGrid(
                          context, bonusPreConfirmed, "Ön Onaylı Harcamalar"),
                      bonusGrid(
                          context, bonusCompleted, "Tamamlanan Harcamalar"),
                      bonusGrid(
                          context, bonusCancelled, "İptal Edilen Harcamalar"),
                      NewCampaign(),
                      campaignGrid(context),
                      ReportsView(),
                      userGrid(context, userRequests, "Kullanıcı Talepleri"),
                      userGrid(context, userConfirmed, "Kullanıcı Listesi"),
                      userGrid(context, userDenied, "Reddedilen Kullanıcılar"),
                      userGrid(context, userBlackList, "Kara Liste"),
                      NewHotel(),
                      hotelGrid(context),
                      NewFactor(),
                      factorGrid(context),
                      CalendarView(),
                      NewOperator(),
                      operatorGrid(context)
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
