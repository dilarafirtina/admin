import 'package:admin/constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartView extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Haftalık Gelen Rezervasyon',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.w300)),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Bu hafta",
                    style: TextStyle(
                      color: detailTextColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: EdgeInsets.only(right: defaultPadding / 2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red.shade600),
                      ),
                      Text("145"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: defaultPadding * 2,
              ),
              Column(
                children: [
                  Text(
                    "Geçen hafta",
                    style: TextStyle(
                      color: detailTextColor,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        margin: EdgeInsets.only(right: defaultPadding / 2),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      Text("145"),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: defaultPadding * 2,
          ),
          Container(
            height: 200,
            padding: const EdgeInsets.only(right: 16, left: 6),
            constraints: BoxConstraints(minWidth: 360),
            child: LineChart(
              sampleData1,
              swapAnimationDuration: const Duration(milliseconds: 250),
            ),
          ),
        ],
      ),
    );
  }

  LineChartData get sampleData1 => LineChartData(
        lineTouchData: lineTouchData1,
        gridData: gridData,
        titlesData: titlesData1,
        borderData: borderData,
        lineBarsData: lineBarsData1,
        minX: 0,
        maxX: 14,
        maxY: 4,
        minY: 0,
      );

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  FlTitlesData get titlesData1 => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitles(),
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitles(),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  Widget leftTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: detailTextColor,
      fontSize: 12,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0';
        break;
      case 1:
        text = '5000';
        break;
      case 2:
        text = '10 000';
        break;
      case 3:
        text = '15 000';
        break;
      case 4:
        text = '20 000';
        break;
      default:
        return Container();
    }

    return Text(
      text,
      style: style,
      textAlign: TextAlign.center,
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
        reservedSize: 40,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    const style = TextStyle(
      color: detailTextColor,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = const Text('Mon', style: style);
        break;
      case 2:
        text = const Text('Tue', style: style);
        break;
      case 3:
        text = const Text('Wed', style: style);
        break;
      case 4:
        text = const Text('Thu', style: style);
        break;
      case 5:
        text = const Text('Fri', style: style);
        break;
      case 6:
        text = const Text('Sat', style: style);
        break;
      case 7:
        text = const Text('Sun', style: style);
        break;
      case 8:
        text = const Text('Mon', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 25,
      child: text,
    );
  }

  SideTitles bottomTitles() => SideTitles(
        showTitles: true,
        reservedSize: 50,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  FlGridData get gridData => FlGridData(show: false);

  FlBorderData get borderData => FlBorderData(
        show: true,
        border: const Border(
          bottom: BorderSide(color: Color(0xff4e4965), width: 1),
          left: BorderSide(color: Colors.transparent),
          right: BorderSide(color: Colors.transparent),
          top: BorderSide(color: Colors.transparent),
        ),
      );

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: const Color(0xff4af699),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: true),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 0.2),
          FlSpot(2, 0.7),
          FlSpot(3, 0.5),
          FlSpot(4, 0.9),
          FlSpot(5, 1),
          FlSpot(6, 1.3),
          FlSpot(7, 1.4),
          FlSpot(8, 1.2),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: const Color(0xffaa4cfc),
        barWidth: 1,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
          color: const Color(0x00aa4cfc),
        ),
        spots: const [
          FlSpot(1, 1),
          FlSpot(2, 2.8),
          FlSpot(3, 1.2),
          FlSpot(4, 2.8),
          FlSpot(5, 2.6),
          FlSpot(6, 3.9),
          FlSpot(7, 2.6),
          FlSpot(8, 3.9),
        ],
      );
}
