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

class MainScreen extends StatelessWidget {
  MainScreen({
    Key? key,
    required this.child,
  }) : super(key: key);

  Widget child;

//final scaffoldKey1 = GlobalKey<ScaffoldState>();
  //final MenuController controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  key: scaffoldKey1,
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
                    padding: EdgeInsets.all(defaultPadding / 2),
                    child: Header()),
                Expanded(child: child)
              ]),
            )
          ],
        ),
      ),
    );
  }
}
