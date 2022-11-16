import 'package:admin/models/Reservation.dart';
import 'package:admin/pages/dashboard/components/campaigns.dart';
import 'package:admin/pages/dashboard/components/line_chart_widget.dart';
import 'package:admin/pages/dashboard/components/recent_reservations.dart';
import 'package:admin/pages/reservations/recent_reservations_grid.dart';
import 'package:admin/responsive.dart';
import 'package:admin/pages/dashboard/components/summary.dart';
import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Responsive(
              mobile: Column(
                children: [
                  Summary(),
                  SizedBox(height: defaultPadding),
                  LineChartView(),
                  SizedBox(height: defaultPadding),
                  RecentReservations(context),
                  SizedBox(height: defaultPadding),
                  ImageSlider(),
                  SizedBox(height: defaultPadding),
                ],
              ),
              desktop: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Summary(),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 3,
                        child: LineChartView(),
                      ),
                      SizedBox(width: defaultPadding),
                    ],
                  ),
                  SizedBox(height: defaultPadding * 2),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 4,
                        child: RecentReservations(context),
                      ),
                      SizedBox(width: defaultPadding),
                      Expanded(
                        flex: 2,
                        child: ImageSlider(),
                      ),
                      SizedBox(width: defaultPadding),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
