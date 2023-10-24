import 'package:laptopservices/utils/export_file.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(55.0);
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(55.h), // here the desired height
      child: AppBar(
        //titleSpacing: 0,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(
              width: 5.w,
            ),
            const Text("Laptop Services",style: TextStyle(color: kblack),),
          ],
        ),
        backgroundColor: kwhite,
      ),
    );
  }
}
