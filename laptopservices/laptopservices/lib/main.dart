import 'package:laptopservices/utils/export_file.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            title: 'Your Leader',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: 'Objectivity',
              // bottomSheetTheme: const BottomSheetThemeData(
              //     backgroundColor: Colors.transparent),
            ),
            getPages: Routes.routes,
            initialRoute: KSPLASH
            //   KBottom_navigation
            );
      },
    );
  }
}