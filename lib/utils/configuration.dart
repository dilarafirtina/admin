import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const kPrimaryColor = Color(0xFF2697FF);
const kSecondaryColor = Color(0xFF252b48);
const bgColor = Color(0xFF1c2038);

const creamColor = Color(0xFFFFFFFF);
const snowColor = Color(0xFFFFFAFA);
const detailTextColor = Color(0xFF525e78);

const defaultPadding = 16.0;

const requiredField = "This field is required";
const invalidEmail = "Enter a valid email address";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: requiredField),
    MinLengthValidator(8, errorText: 'password must be at least 8 digits long'),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])',
        errorText: 'passwords must have at least one special character')
  ],
);

const InputDecoration otpInputDecoration = InputDecoration(
  filled: false,
  border: UnderlineInputBorder(),
  hintText: "0",
);

double maxWidth = 768;
const String logoImage =
    "data:image/png;base64,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";
const String contactImage = "https://yasmak.opex.app/images/contact.png";
const String splash1 = "https://yasmak.opex.app/images/splash1.jpg";
const String trImage = "https://yasmak.opex.app/images/tr.png";
const String enImage = "https://yasmak.opex.app/images/uk.png";
const String deImage = "https://yasmak.opex.app/images/de.png";
const String ruImage = "https://yasmak.opex.app/images/ru.png";
const String bonusLogo = "https://yasmak.opex.app/bonus_logo.png";

//TODO
String currentUser = "Dilara Fırtına";

class AppDefaults {
  static const double radius = 15;
  static const double margin = 15;
  static const double padding = 15;

  /// Used For Border Radius
  static BorderRadius borderRadius = BorderRadius.circular(radius);

  /// Used For Bottom Sheet
  static BorderRadius bottomSheetRadius = const BorderRadius.only(
    topLeft: Radius.circular(radius),
    topRight: Radius.circular(radius),
  );

  /// Used For Top Sheet
  static BorderRadius topSheetRadius = const BorderRadius.only(
    bottomLeft: Radius.circular(radius),
    bottomRight: Radius.circular(radius),
  );

  /// Default Box Shadow used for containers
  static List<BoxShadow> boxShadow = [
    BoxShadow(
      blurRadius: 10,
      spreadRadius: 0,
      offset: const Offset(0, 2),
      color: Colors.black.withOpacity(0.04),
    ),
  ];

  static Duration duration = const Duration(milliseconds: 300);
}

//Ela için false else demo için
var demo = false;

var companyId = demo ? 1 : 27;
var tenantId = demo ? 1 : 12;
var apiEndpoint =
    demo ? "https://demo.opex.app:8101/" : "https://mysvc.opex.app:9000/ ";
final String apiToken = demo
    ? "guestappapi#1\$e1603a8f46562c51e463758e99e4f8f550e124d1a65dbd2a9b0a6826a121299b9461ac8cb40db4a03f13a50228734e6a7b820ac5093f5c8277cebad35e804f36"
    : "guestappapi#12\$cd34630a75b1ba2878e7d3b03fc54f20b8edc1895a2cb804e0e1bdf4496d2f796ed16cd996eae9eeea11d9ebae277a590c9aebe99bb056d1c2ca081397ca4459";
//guestappapi#1$e1603a8f46562c51e463758e99e4f8f550e124d1a65dbd2a9b0a6826a121299b9461ac8cb40db4a03f13a50228734e6a7b820ac5093f5c8277cebad35e804f36
//guestapp#5$7e87b01df802ebfdfa1dbaec3c1ea54d68844f17b2888f321b356ea1ea556798406e1b8fe0639b59a87b311c26f0d4c597eebae90078746ceec6c7a3942877e7
//Edit Text
// class TypeableTextFormField extends StatefulWidget {
//   final int? maxLines;
//   final String? finalText;
//   final InputDecoration? decoration;
//   final Animation<double>? animation;

//   const TypeableTextFormField(
//       {Key? key,
//       this.animation,
//       this.maxLines,
//       this.decoration,
//       this.finalText})
//       : super(key: key);

//   @override
//   TypeableTextFormFieldState createState() {
//     return TypeableTextFormFieldState();
//   }
// }

/*fonts*/
const fontRegular = 'Regular';
const fontMedium = 'Medium';
const fontSemibold = 'Semibold';
const fontBold = 'Bold';
/* font sizes*/
const textSizeSmall = 12.0;
const textSizeSMedium = 14.0;
const textSizeMedium = 16.0;
const textSizeLargeMedium = 18.0;
const textSizeNormal = 20.0;
const textSizeLarge = 24.0;
const textSizeXLarge = 28.0;
const textSizeXXLarge = 30.0;

const headline1 = TextStyle(
    fontSize: 18.0, color: kPrimaryColor, fontWeight: FontWeight.w400);
const headline4 = TextStyle(
    fontSize: 15.0, color: kPrimaryColor, fontWeight: FontWeight.w400);
const headline6 = TextStyle(
    fontSize: 13.0, color: Colors.black38, fontWeight: FontWeight.w400);
const subtitle1 = TextStyle(
    fontSize: 18.0, color: Colors.black87, fontWeight: FontWeight.w400);
const subtitle2 = TextStyle(
    fontSize: 18.0, color: kPrimaryColor, fontWeight: FontWeight.w400);
const bodyText2 = TextStyle(fontSize: 15.0);
const bodyText1 = TextStyle(fontSize: 25.0, color: kPrimaryColor);

//Icons
final appIcons = <String, IconData>{
  'star': Icons.star,
  'hand': Icons.handshake,
  'shuttle-van': Icons.airport_shuttle,
  'alarm-sharp': Icons.alarm,
  'tools': Icons.handyman,
  'laundry': Icons.local_laundry_service,
  'roomservice': Icons.room_service,
  'dry-cleaning': Icons.dry_cleaning,
  "female": Icons.female,
  "signature": Icons.edit,
  "hotel": Icons.hotel,
  "concierge_bell": Icons.room_service,
  "calendar": Icons.calendar_today,
  "user": Icons.person,
  "search": Icons.search,
  "door_open": Icons.door_front_door,
  "login": Icons.login,
  "logout": Icons.logout,
  "account": Icons.person,
  "survey": Icons.question_mark,
  "contact": Icons.contact_phone,
  "comment": Icons.comment,
  "navigation": Icons.navigation,
  "packages": Icons.star,
  "spa": Icons.spa,
  "rooms": Icons.bed,
  "services": Icons.category,
  "language": Icons.language,
  "houseKeeping": Icons.cleaning_services,
  "babySitter": Icons.baby_changing_station,
  "lateCheckout": Icons.lock_clock,
  "restraurant": Icons.restaurant,
};

//Task colors
final appColors = <String, Color>{
  'lost': Colors.yellow,
  'roomrack': Colors.blue,
  'comment': Colors.green,
  'survey': Colors.green,
  'guest': Colors.cyan,
  'dashboard': Colors.black,
  'reservation': Colors.orange,
  'form': Colors.purple,
  'grey': Colors.grey,
  'task': Colors.red
};

final taskColors = <int, Color>{
  1: Colors.blue, //new
  2: Colors.yellow, //in progress
  3: Colors.orange, //plan
  4: Colors.green, // completed
  5: Colors.green, //confirmed
  6: Colors.grey, //cancel
  7: Colors.purple, //reopen
  8: Colors.teal, // redirect
  9: Colors.indigo, // notified
};
