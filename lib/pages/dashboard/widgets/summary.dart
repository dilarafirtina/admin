import 'package:flutter/material.dart';

import '../../../models/summary_model.dart';
import '../../../responsive.dart';
import 'summary_info_card.dart';

class Summary extends StatelessWidget {
  const Summary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Responsive(
          mobile: SummaryInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: SummaryInfoCardGridView(),
          desktop: SummaryInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.6 : 1.6,
          ),
        ),
      ],
    );
  }
}

class SummaryInfoCardGridView extends StatelessWidget {
  const SummaryInfoCardGridView({
    Key? key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 350,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SummaryInfoCard(summary: demoSummary[0])),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: SummaryInfoCard(summary: demoSummary[1]))
                  ],
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SummaryInfoCard(summary: demoSummary[2])),
                    SizedBox(width: 20),
                    Expanded(
                        flex: 1,
                        child: SummaryInfoCard(summary: demoSummary[3]))
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
