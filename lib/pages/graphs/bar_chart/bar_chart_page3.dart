import 'package:flutter/material.dart';

import 'samples/bar_chart_sample3.dart';
import 'samples/bar_chart_sample4.dart';
import 'samples/bar_chart_sample5.dart';
import 'samples/bar_chart_sample6.dart';
import 'samples/bar_chart_sample7.dart';

class BarChartPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: <Widget>[
          BarChartSample7(),
          SizedBox(
            height: 18,
          ),
          BarChartSample3(),
          SizedBox(
            height: 18,
          ),
          BarChartSample5(),
          SizedBox(
            height: 18,
          ),
          BarChartSample6(),
          SizedBox(
            height: 18,
          ),
          BarChartSample4(),
        ],
      ),
    );
  }
}
