import 'package:admin/pages/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../controllers/drawer_menu_controller.dart';
import '../../models/bonus_model.dart';
import '../../models/reservation_model.dart';
import '../../models/user_model.dart';
import '../../responsive.dart';
import '../bonus/bonus_grid.dart';
import '../campaigns/campaign_grid.dart';
import '../campaigns/new_campaign.dart';
import '../dashboard/widgets/header.dart';
import '../factors/factor_calendar.dart';
import '../factors/factor_grid.dart';
import '../factors/new_factor.dart';
import '../hotels/hotel_grid.dart';
import '../hotels/new_hotel.dart';
import '../operators/new_operator.dart';
import '../operators/operator_grid.dart';
import '../reports/reports.dart';
import '../reservations/reservations_grid.dart';
import '../user/user_grid.dart';
import 'widgets/side_menu.dart';

import '../../utils/configuration.dart';
import 'page_controller.dart';

class MainScreen1 extends StatelessWidget {
  final MyTabController _tabx = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: context.read<MenuController>().scaffoldKey,
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
                    padding: EdgeInsets.all(defaultPadding), child: Header()),
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
