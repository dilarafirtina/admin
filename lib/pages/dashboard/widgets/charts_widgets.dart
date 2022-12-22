import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../../responsive.dart';
import '../../../utils/configuration.dart';
import '../../graphs/bar_chart/bar_chart_page3.dart';
import '../../graphs/bar_chart/samples/bar_chart_sample7.dart';
import '../../graphs/pie_chart/samples/pie_chart_sample2.dart';

Widget ChartsWidgets(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Responsive(
        desktop: desktopCharts(context),
        mobile: mobileCharts(context),
      )
    ],
  );
}

Widget desktopCharts(BuildContext context) {
  return IntrinsicHeight(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: dashBoardCardTemplate(
            context,
            PieChartSample2(),
            title: "Lorem Ipsum",
          ),
        ),
        SizedBox(
          width: defaultPadding,
        ),
        Expanded(
          child: dashBoardCardTemplate(
            context,
            BarChartSample7(),
            title: "Lorem Ipsum",
          ),
        ),
      ],
    ),
  );
}

Widget mobileCharts(BuildContext context) {
  return Column(
    children: [
      dashBoardCardTemplate(
        context,
        PieChartSample2(),
        title: "Lorem Ipsum",
      ),
      SizedBox(
        width: defaultPadding,
      ),
      dashBoardCardTemplate(
        context,
        BarChartPage3(),
        title: "Lorem Ipsum",
      ),
    ],
  );
}
