import 'package:flutter/material.dart';

import 'samples/bar_chart_sample1.dart';

class BarChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Color(0xff232040),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(28),
          child: BarChartSample1(),
        ),
      ),
    );
  }
}
