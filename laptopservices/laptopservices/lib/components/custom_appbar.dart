
import 'package:laptopservices/utils/export_file.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final bool dontHaveBackAsLeading;
  final bool hasNotificationAsTrailing;
  final bool centerTitle;
  final Widget? trailing;
  final Color? bColor;
  final bool? dashboard;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.bColor,
    this.dontHaveBackAsLeading = false,
    this.hasNotificationAsTrailing = false,
    this.centerTitle = false,
    this.trailing,
    this.dashboard=false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      titleSpacing: 0,
      centerTitle: widget.centerTitle,
      backgroundColor: kwhite,
      leadingWidth: widget.dontHaveBackAsLeading ? 15.w : 50.w,
      leading: widget.dashboard == true?IconButton(
              onPressed: () {
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 25.w,
                color: kblack,
              ),
            ): widget.dontHaveBackAsLeading
          ? const SizedBox()
          : IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 25.w,
                color: kblack,
              ),
            ),
      title: Padding(
        padding: const EdgeInsets.only(top: 2.5),
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 17.sp,
            fontWeight: kFW800,
            color: kblack,
            letterSpacing: 0.5,
          ),
        ),
      ),
      actions: [
        widget.trailing ?? const SizedBox(),
      ],
    );
  }
}
