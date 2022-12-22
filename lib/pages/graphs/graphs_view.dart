import 'package:admin/pages/graphs/pie_chart/pie_chart_page.dart';
import 'package:admin/pages/graphs/radar_chart/radar_chart_page.dart';
import 'package:admin/pages/graphs/scatter_chart/scatter_chart_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bar_chart/bar_chart_page1.dart';
import 'bar_chart/bar_chart_page2.dart';
import 'bar_chart/bar_chart_page3.dart';
import 'line_chart/line_chart_page.dart';
import 'line_chart/line_chart_page2.dart';
import 'line_chart/line_chart_page3.dart';
import 'line_chart/line_chart_page4.dart';

class GraphsView extends StatelessWidget {
  bool get isDesktopOrWeb => GetPlatform.isDesktop;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          width: 500,
          height: 500,
          child: BarChartPage(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: BarChartPage2(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: BarChartPage3(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: PieChartPage(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: LineChartPage(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: LineChartPage2(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: LineChartPage3(),
        ),
        SizedBox(
          width: 500,
          height: 500,
          child: LineChartPage4(),
        ),
      ]),
    );
  }
}
