import 'package:percent_indicator/percent_indicator.dart';

import '../utils/configuration.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget header(String header) {
  return Text(header.tr,
      style: const TextStyle(
          fontSize: 22, fontWeight: FontWeight.w600, color: Colors.grey));
}

Widget title(String subtitle) {
  return Text(subtitle,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: kPrimaryColor));
}

Widget subTitle(String subtitle) {
  return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text(subtitle,
          softWrap: true, style: ThemeData.dark().textTheme.subtitle1));
}

Widget text(String text) {
  return Padding(
      padding: const EdgeInsets.only(top: 8),
      child:
          Text(text, style: TextStyle(fontSize: 16, color: Colors.grey[700])));
}

Widget menuButton({VoidCallback? onTap}) {
  return Positioned(
    right: 8.0,
    top: Get.height * 0.05,
    child: GestureDetector(
      onTap: onTap,
      child: Container(
          height: 40.0,
          width: 40.0,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: const Icon(Icons.menu, color: kSecondaryColor, size: 20)),
    ),
  );
}

// Widget positionedBackButton({Color? color}) {
//   return Positioned(
//       left: 8.0,
//       top: Get.height * 0.05,
//       child: backButton(color: color ?? kPrimaryColor));
// }

// Widget backButton({Color? color}) {
//   return GestureDetector(
//     onTap: () => goBack(),
//     child: Container(
//       height: 40.0,
//       width: 40.0,
//       decoration:
//           const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
//       child: Icon(
//         Icons.arrow_back,
//         color: color ?? kPrimaryColor,
//         size: 20,
//       ),
//     ),
//   );
// }

Widget backButtonColored() {
  return Container(
      height: 40.0,
      width: 40.0,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: kSecondaryColor),
      child: const Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 20,
      ));
}

Widget circleButton(IconData icon) {
  return Container(
      height: 50.0,
      width: 50.0,
      decoration:
          const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
      child: Icon(
        icon,
        color: Colors.white,
        size: 36,
      ));
}

Widget customListTile() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 70,
        color: Colors.grey[200],
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 70,
              height: 70,
              child: const Icon(Icons.cake, color: Colors.white),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text('Test Title'),
                  Text('Test Video', style: TextStyle(color: Colors.grey))
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.blue),
          ],
        ),
      ),
    ),
  );
}

ListTile simpleListTile(
    String title, String subtitle, IconData icon, Color color) {
  return ListTile(
    onTap: () {},
    //contentPadding: EdgeInsets.symmetric(vertical: 4),
    leading: Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Icon(icon, color: Colors.white),
    ),
    title: Text(title.tr),
    //subtitle: Text(subtitle.tr),
    trailing: IconButton(
      icon: const Icon(Icons.chevron_right),
      onPressed: () {},
    ),
  );
}

Widget smallColoredButton(IconData icon) {
  return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
      ),
      child: Icon(
        icon, //Icons.keyboard_arrow_left,
        color: Colors.white,
        size: 28,
      ));
}

Widget noData() {
  return Center(child: Text("No data".tr));
}

Widget greyLine() {
  return Divider(
    color: Colors.grey[400],
    height: 1,
  );
}

// Widget blackButton(String caption, String route, String id) {
//   final String parsedRoute = parseString(route);

//   return Container(
//     width: 320,
//     height: 60,
//     margin: const EdgeInsets.only(top: 40, bottom: 30.0),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(20.0),
//     ),
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(
//           //color: Color(0xFF3C4858),
//           shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20.0))),
//       onPressed: () => id == "0"
//           ? Get.toNamed(parsedRoute + "/" + id)
//           : Get.toNamed(parsedRoute),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               alignment: Alignment.center,
//               margin: const EdgeInsets.only(left: 40.0),
//               child: Text(
//                 parseString(caption), //'Let\'s go',
//                 style: const TextStyle(color: Colors.white, fontSize: 18.0),
//               ),
//             ),
//           ),
//           Container(
//             height: 40.0,
//             width: 40.0,
//             decoration: const BoxDecoration(
//                 shape: BoxShape.circle, color: Colors.white),
//             child: const Icon(
//               Icons.arrow_forward,
//               color: kSecondaryColor, //Color(0xFF3C4858),
//               size: 20.0,
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

showBusyIndicator() {
  return const Center(
    child: CircularProgressIndicator(
      strokeWidth: 5,
      backgroundColor: Colors.white,
      valueColor: AlwaysStoppedAnimation(Colors.grey),
    ),
  );
}

void showToastMessage(String type, String title, String message) async {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: type == 'error' ? Colors.red : Colors.green,
    colorText: Colors.white,
    icon: Icon(type == 'error' ? Icons.error : Icons.check_circle,
        color: Colors.white),
  );
}

Widget gridHeader(String? title) {
  return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Get.size.width > 768
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text(title!)],
                ),
                gridActions()
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(title!),
                SizedBox(
                  height: defaultPadding,
                ),
                gridActions()
              ],
            ));
}

Widget gridActions() {
  TextStyle style = TextStyle(color: Colors.red.shade600, fontSize: 12);
  return Container(
      child: Row(
    children: [
      Container(
        width: 150,
        child: TextField(
          onChanged: (value) {},
          decoration: InputDecoration(
            labelStyle: style,
            labelText: 'Search',
            suffixIcon:
                Icon(Icons.search, color: Colors.red.shade600, size: 20),
          ),
        ),
      ),
      Row(
        children: [
          TextButton(
            child: Text("Print", style: style),
            onPressed: () => {},
          ),
          Icon(Icons.print, color: Colors.red.shade600, size: 20)
        ],
      ),
      Row(
        children: [
          TextButton(
            child: Text("Export", style: style),
            onPressed: () => {},
          ),
          Icon(Icons.upload, color: Colors.red.shade600, size: 20)
        ],
      ),
    ],
  ));
}

Widget linearIndicator(double percent, Color color,
    {String? text,
    Widget? leading,
    Widget? trailing,
    Color? backgroundColor,
    double? lineHeight}) {
  return Container(
      padding: EdgeInsets.symmetric(vertical: defaultPadding / 2),
      child: LinearPercentIndicator(
        backgroundColor: backgroundColor ?? Colors.transparent,
        animation: true,
        lineHeight: lineHeight ?? 20.0,
        animationDuration: 2500,
        percent: percent,
        center: Text(text ?? ""),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: color,
        barRadius: Radius.circular(10),
        leading: leading ?? SizedBox(),
        trailing: trailing ?? SizedBox(),
      ));
}

Widget circularIndicator(
    {String? centerText,
    String? footerText,
    List<Color>? colors,
    Color? footerColor,
    double? percent,
    IconData? iconData,
    Color? iconColor}) {
  return CircularPercentIndicator(
    backgroundColor: Colors.grey.shade100,
    radius: 80.0,
    lineWidth: 10.0,
    animation: true,
    animationDuration: 3000,
    percent: percent == null ? 1 : percent,
    animateFromLastPercent: true,
    center: Text(
      centerText ?? "",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
    ),
    footer: footerText!.isNotEmpty
        ? Container(
            color: footerColor ?? Colors.grey.shade200,
            padding: EdgeInsets.all(defaultPadding / 2),
            margin: EdgeInsets.all(defaultPadding / 2),
            child: Text(
              footerText ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.white),
            ))
        : SizedBox(),
    circularStrokeCap: CircularStrokeCap.round,
    maskFilter: MaskFilter.blur(BlurStyle.solid, 3),
    linearGradient: LinearGradient(
      colors: colors ?? [Colors.blue, Colors.cyan],
    ),
    widgetIndicator: RotatedBox(
      quarterTurns: 1,
      child: iconData == null
          ? SizedBox()
          : Icon(
              iconData,
              size: 30,
              color: iconColor ?? footerColor,
            ),
    ),
  );
}

Widget dashBoardCardTemplate(
  BuildContext context,
  Widget child, {
  String? title,
}) {
  return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        children: [
          Text(title ?? "", style: Theme.of(context).textTheme.headline6),
          Divider(
            thickness: 1,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          child
        ],
      ));
}
