import 'package:flutter/material.dart';

import '../../responsive.dart';
import '../../utils/configuration.dart';
import 'widgets/campaigns.dart';
import 'widgets/charts_widgets.dart';
import 'widgets/line_chart_widget.dart';
import 'widgets/progress_indicators.dart';
import 'widgets/recent_reservations.dart';
import 'widgets/summary.dart';
import 'widgets/summary_widgets.dart';

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
                  ProgressIndicators(context),
                  SizedBox(height: defaultPadding),
                  SummaryWidgets(context),
                  SizedBox(height: defaultPadding),
                  RecentReservations(context),
                  SizedBox(height: defaultPadding),
                  ChartsWidgets(context),
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
                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  ProgressIndicators(context),
                  SizedBox(height: defaultPadding),
                  SummaryWidgets(context),
                  SizedBox(height: defaultPadding),
                  ChartsWidgets(context),
                  SizedBox(height: defaultPadding),
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
