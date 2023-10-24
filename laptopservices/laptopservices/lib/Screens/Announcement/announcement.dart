// ignore_for_file: camel_case_types


import '../../utils/export_file.dart';

class Announcement_view extends StatefulWidget {
  const Announcement_view({super.key});

  @override
  State<Announcement_view> createState() => _Announcement_viewState();
}

class _Announcement_viewState extends State<Announcement_view> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        // floatingActionButton: FloatingAction(),
        appBar: AppBar(
            backgroundColor: kwhite,
            leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_rounded,
                size: 25.w,
                color: kblack,
              ),
            ),
            elevation: 0,
            titleSpacing: 0,
            bottom: TabBar(
              tabAlignment: TabAlignment.start,
              indicatorColor: KPink,
              labelColor: KPink,
              unselectedLabelColor: klightdark,
              labelStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 12.sp,
                  fontWeight: kFW700,
                  color: ktextcolor),
              unselectedLabelStyle: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: 11.sp,
                  fontWeight: kFW500,
                  color: ktextcolor),
              isScrollable: true,
              tabs: const [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "New",
                ),
                Tab(
                  text: "Schemes",
                ),
                Tab(
                  text: "Activities",
                ),
              ],
            ),
            title: Text(
              "Announcement",
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: kFW800,
                color: kblack,
                letterSpacing: 0.5,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  children: [
                    // IconButton(
                    //     onPressed: () {
                    //       apiController.enableSearch(!enableSearch.value);
                    //       setState(() {
                    //         enableSearch.value = !enableSearch.value;
                    //       });
                    //     },
                    //     icon: Icon(
                    //       Icons.search,
                    //       color: kblack,
                    //       size: 25.w,
                    //     )),
                    // SizedBox(
                    //   width: 10.w,
                    // ),
                    // GestureDetector(
                    //   onTap: () {
                    //     Get.toNamed(KNotification);
                    //   },
                    //   child: Image.asset(
                    //     "assets/images/bell.png",
                    //     width: 25.w,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ]),
        body: TabBarView(
          children: [
            Announcement_list(),
             Announcement_list(),
              Announcement_list(),
               Announcement_list(),

          ],
        ),
      ),
    );
  }
}