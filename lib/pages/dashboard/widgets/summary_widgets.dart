import 'package:admin/widgets/widgets.dart';
import 'package:flutter/material.dart';
import '../../../responsive.dart';
import '../../../utils/configuration.dart';

Widget SummaryWidgets(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Responsive(
        desktop: desktopSummaries(context),
        mobile: mobileSummaries(context),
      )
    ],
  );
}

Widget desktopSummaries(BuildContext context) {
  return IntrinsicHeight(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: dashBoardCardTemplate(
            context,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                linearIndicator(
                  0.65,
                  Colors.green,
                  backgroundColor: Colors.grey.shade200,
                  text: "65%",
                ),
                linearIndicator(
                  0.20,
                  Colors.blue,
                  backgroundColor: Colors.grey.shade200,
                  text: "20%",
                ),
                linearIndicator(
                  0.40,
                  Colors.red,
                  backgroundColor: Colors.grey.shade200,
                  text: "40%",
                ),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                itemListTile(
                    color: Colors.green, title: "Lorem", trailingText: "234"),
                itemListTile(
                    color: Colors.red, title: "İpsum", trailingText: "234"),
                itemListTile(
                    color: Colors.blue, title: "Dolor", trailingText: "234"),
                itemListTile(
                    color: Colors.yellow, title: "Amet", trailingText: "234"),
                itemListTile(
                    color: Colors.pink, title: "Lorem", trailingText: "234"),
                itemListTile(
                    color: Colors.orange, title: "İpsum", trailingText: "234"),
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                linearIndicator(0.65, Colors.green,
                    leading: Text("Lorem"), lineHeight: 10.0),
                linearIndicator(0.20, Colors.blue,
                    leading: Text("İpsum"), lineHeight: 10.0),
                linearIndicator(0.20, Colors.red,
                    leading: Text("Dolor"), lineHeight: 10.0),
                linearIndicator(0.65, Colors.orange,
                    leading: Text("Lorem"), lineHeight: 10.0),
                linearIndicator(0.20, Colors.yellow,
                    leading: Text("İpsum"), lineHeight: 10.0),
                linearIndicator(0.20, Colors.pink,
                    leading: Text("Dolor"), lineHeight: 10.0),
              ],
            ),
            title: "Lorem Ipsum",
          ),
        ),
      ],
    ),
  );
}

Widget mobileSummaries(BuildContext context) {
  return Column(
    children: [
      dashBoardCardTemplate(
        context,
        Column(
          children: [
            linearIndicator(
              0.65,
              Colors.green,
              backgroundColor: Colors.grey.shade200,
              text: "65%",
            ),
            linearIndicator(
              0.20,
              Colors.blue,
              backgroundColor: Colors.grey.shade200,
              text: "20%",
            ),
            linearIndicator(
              0.20,
              Colors.red,
              backgroundColor: Colors.grey.shade200,
              text: "40%",
            ),
          ],
        ),
        title: "Lorem Ipsum",
      ),
      SizedBox(
        width: defaultPadding,
      ),
      dashBoardCardTemplate(
        context,
        Column(
          children: [
            itemListTile(
                color: Colors.green, title: "Lorem", trailingText: "234"),
            itemListTile(
                color: Colors.red, title: "İpsum", trailingText: "234"),
            itemListTile(
                color: Colors.blue, title: "Dolor", trailingText: "234"),
            itemListTile(
                color: Colors.yellow, title: "Amet", trailingText: "234"),
            itemListTile(
                color: Colors.pink, title: "Lorem", trailingText: "234"),
            itemListTile(
                color: Colors.orange, title: "İpsum", trailingText: "234"),
          ],
        ),
        title: "Lorem Ipsum",
      ),
      SizedBox(
        height: defaultPadding,
      ),
      dashBoardCardTemplate(
        context,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            linearIndicator(0.65, Colors.green,
                leading: Text("Lorem"), lineHeight: 10.0),
            linearIndicator(0.20, Colors.blue,
                leading: Text("İpsum"), lineHeight: 10.0),
            linearIndicator(0.20, Colors.red,
                leading: Text("Dolor"), lineHeight: 10.0),
            linearIndicator(0.65, Colors.orange,
                leading: Text("Lorem"), lineHeight: 10.0),
            linearIndicator(0.20, Colors.yellow,
                leading: Text("İpsum"), lineHeight: 10.0),
            linearIndicator(0.20, Colors.pink,
                leading: Text("Dolor"), lineHeight: 10.0),
          ],
        ),
        title: "Lorem Ipsum",
      ),
    ],
  );
}

Widget itemListTile({String? title, Color? color, String? trailingText}) {
  return ListTile(
    title: Text(title ?? ""),
    trailing: Container(
      color: color,
      padding: EdgeInsets.all(defaultPadding / 2),
      margin: EdgeInsets.all(defaultPadding / 2),
      child: Text(trailingText ?? "",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
    ),
  );
}
