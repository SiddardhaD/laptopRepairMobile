// // ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use, constant_identifier_names

import 'package:laptopservices/utils/export_file.dart';

/////Routes
const String KHOME = '/package:laptop/Screens/Home/home_screen.dart';
const String KSPLASH = '/package:laptop/Screens/splash_screen.dart';
const String KSIGNIN = '/package:laptop/Screens/authentication/sign_in.dart';
const String KSIGNINUSER = '/package:laptop/Screens/authentication/signUP_user.dart';
const String KSIGNUP = '/package:laptop/Screens/authentication/sign_up.dart';
const String KBottom_navigation='/Screens/Bottom_navigation/navigation';
const String KNotification="/Notification/notification.dart";
const String KAnnouncement="/Screens/Announcement/announcement";
const String KASSIST="/Screens/Assistence/teleassistance.dart";
const String KSTORES="/Screens/stores/stores.dart";

////Fonts
double kTenFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 10.sp
    : 6.sp;
double kTwelveFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 12.sp
    : 7.sp;

double kFourteenFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 14.sp
    : 9.sp;
double kSixteenFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 16.sp
    : 11.sp;
double kEighteenFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 18.sp
    : 13.sp;
double kTwentyFont = MediaQueryData.fromWindow(WidgetsBinding.instance.window)
            .size
            .shortestSide <
        600
    ? 20.sp
    : 15.sp;
double kTwentyTwoFont =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                .size
                .shortestSide <
            600
        ? 22.sp
        : 17.sp;
double kTwentyFourFont =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                .size
                .shortestSide <
            600
        ? 24.sp
        : 19.sp;
double kTwentySixFont =
    MediaQueryData.fromWindow(WidgetsBinding.instance.window)
                .size
                .shortestSide <
            600
        ? 26.sp
        : 21.sp;

///Font weights

const FontWeight kFW400 = FontWeight.w400;
const FontWeight kFW500 = FontWeight.w500;
const FontWeight kFW600 = FontWeight.w600;
const FontWeight kFW700 = FontWeight.w700;
const FontWeight kFW800 = FontWeight.w800;
const FontWeight kFW900 = FontWeight.w900;

// Colors
const Color kInactiveIndicatorColor = Color(0xff82A9C8);
///MLA Colors
const Color kBackground = Color(0xff191C1E);
const Color kgray = Color(0xffB6B9C7);
const Color KPink = Color(0xffED048D);
const Color KlightPink = Color.fromARGB(255, 237, 173, 211);
const Color kblack = Color(0xff303030);
const Color customgrey = Color(0xff7E91AE);
const Color kwhite = Color(0xffFFFFFF);
const Color lightgrey = Color(0xffEFEFEF);
const Color ktextcolor = Color(0xff686868);
const Color klighttext = Color(0xff727272);
const Color kteel =  Color(0xFF26CBE6);

// #242424  // #00000080
const Color kgreen = Color(0xff008000);
const Color klightorange = Color(0xffFC9353);
const Color klightbrown = Color(0xffD5797F);

const Color klightdark = Color(0xff878787);
const Color kdarkgrey = Color(0xff242424);
const Color kdark = Color(0x80000000);
const Color kduskgrey = Color(0xFFA1A1A1);
//  Color(0xFFA1A1A1), // #7E91AE
// #979797
// const Color kcustomdark = Color(0xff808080);
// #808080




