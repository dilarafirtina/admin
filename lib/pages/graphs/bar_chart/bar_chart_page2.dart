import 'package:flutter/material.dart';

import 'samples/bar_chart_sample2.dart';

class BarChartPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xff132240),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(28),
          child: BarChartSample2(),
        ),
      ),
    );
  }
}
