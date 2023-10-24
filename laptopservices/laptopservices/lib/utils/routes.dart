import 'package:laptopservices/Screens/stores/stores.dart';
import 'package:laptopservices/utils/export_file.dart';

class Routes {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: KHOME,
      transition: Transition.rightToLeft,
      page: () => const FeedsScreen(),
    ),
    GetPage(
      name: KBottom_navigation,
      transition: Transition.rightToLeft,
      page: () => const Bottom_navigation(),
    ),
    GetPage(
      name: KSIGNIN,
      transition: Transition.rightToLeft,
      page: () => const SignIn(),
    ),
    GetPage(
      name: KSIGNUP,
      transition: Transition.rightToLeft,
      page: () => const SignUp(),
    ),
    GetPage(
      name: KSPLASH,
      transition: Transition.rightToLeft,
      page: () => const Splash(),
    ),
    GetPage(
      name: KNotification,
      transition: Transition.rightToLeft,
      page: () => const Notification_view(),
    ),
    GetPage(
      name: KAnnouncement,
      transition: Transition.rightToLeft,
      page: () => const Announcement_view(),
    ),
    GetPage(
      name: KSIGNINUSER,
      transition: Transition.rightToLeft,
      page: () => const SignupUser(),
    ),
    GetPage(
      name: KASSIST,
      transition: Transition.rightToLeft,
      page: () => const Assistance(),
    ),
    GetPage(
      name: KSTORES,
      transition: Transition.rightToLeft,
      page: () => const Stores(),
    ),
    

  ];
}
