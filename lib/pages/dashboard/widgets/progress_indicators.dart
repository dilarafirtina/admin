import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../../responsive.dart';
import '../../../utils/configuration.dart';

Widget ProgressIndicators(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Responsive(
        desktop: desktopProgress(context),
        mobile: mobileProgress(context),
      )
    ],
  );
}

Widget desktopProgress(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: dashBoardCardTemplate(
          context,
          circularIndicator(
            percent: 0.65,
            centerText: "65%",
            footerText: "Lorem ipsum",
            footerColor: Colors.green,
            colors: [
              Colors.green.shade100,
              Colors.green,
              Colors.green.shade700
            ],
          ),
          title: "Lorem Ipsum",
        ),
      ),
      SizedBox(
        width: defaultPadding,
      ),
      Expanded(
        child: dashBoardCardTemplate(
          context,
          circularIndicator(
            footerText: "Lorem ipsum",
            centerText: "Text",
            footerColor: Colors.yellow,
            colors: [
              Colors.yellow.shade100,
              Colors.yellow,
              Colors.yellow.shade700
            ],
          ),
          title: "Lorem Ipsum",
        ),
      ),
      SizedBox(
        width: defaultPadding,
      ),
      Expanded(
        child: dashBoardCardTemplate(
          context,
          circularIndicator(
            percent: 0.65,
            centerText: "65%",
            footerText: "Lorem ipsum",
            footerColor: Colors.green,
            colors: [
              Colors.green.shade100,
              Colors.green,
              Colors.green.shade700
            ],
          ),
          title: "Lorem Ipsum",
        ),
      ),
      SizedBox(
        width: defaultPadding,
      ),
      Expanded(
        child: dashBoardCardTemplate(
          context,
          circularIndicator(
            footerText: "Lorem ipsum",
            footerColor: Colors.yellow,
            colors: [
              Colors.yellow.shade100,
              Colors.yellow,
              Colors.yellow.shade700
            ],
          ),
          title: "Lorem Ipsum",
        ),
      ),
    ],
  );
}

Widget mobileProgress(BuildContext context) {
  return Column(
    children: [
      dashBoardCardTemplate(
        context,
        circularIndicator(
          percent: 0.65,
          centerText: "65%",
          footerText: "Lorem ipsum",
          footerColor: Colors.green,
          colors: [Colors.green.shade100, Colors.green, Colors.green.shade700],
        ),
        title: "Lorem Ipsum",
      ),
      dashBoardCardTemplate(
        context,
        circularIndicator(
          footerText: "Lorem ipsum",
          footerColor: Colors.yellow,
          colors: [Colors.yellow, Colors.yellow.shade700],
        ),
        title: "Lorem Ipsum",
      ),
      dashBoardCardTemplate(
        context,
        circularIndicator(
          percent: 0.65,
          centerText: "65",
          footerText: "Lorem ipsum",
          footerColor: Colors.green,
          colors: [Colors.green.shade100, Colors.green, Colors.green.shade700],
        ),
      ),
      dashBoardCardTemplate(
        context,
        circularIndicator(
          footerText: "Lorem ipsum",
          footerColor: Colors.yellow,
          colors: [
            Colors.yellow.shade100,
            Colors.yellow,
            Colors.yellow.shade700
          ],
        ),
        title: "Lorem Ipsum",
      ),
    ],
  );
}
