// ignore_for_file: camel_case_types


import 'package:laptopservices/utils/export_file.dart';

class Notification_view extends StatefulWidget {
  const Notification_view({super.key});

  @override
  State<Notification_view> createState() => _Notification_viewState();
}

class _Notification_viewState extends State<Notification_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(            appBar: CustomAppBar(
        title: "Notification",
        dontHaveBackAsLeading: false,
        
        
      ),
      
      );
  }
}