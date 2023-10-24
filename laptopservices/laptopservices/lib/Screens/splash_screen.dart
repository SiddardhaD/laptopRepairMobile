import 'package:laptopservices/utils/export_file.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer( const Duration(seconds: 3), () {
      Get.toNamed(KSIGNIN);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Laptop User Services")),
    );
  }
}
