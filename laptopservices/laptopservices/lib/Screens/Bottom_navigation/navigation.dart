// ignore_for_file: camel_case_types, deprecated_member_use, non_constant_identifier_names

import 'package:laptopservices/utils/export_file.dart';

class Bottom_navigation extends StatefulWidget {
  const Bottom_navigation({super.key});

  @override
  State<Bottom_navigation> createState() => _Bottom_navigationState();
}

class _Bottom_navigationState extends State<Bottom_navigation> {
  final PageController _pageController = PageController();
  int _pageIndex = 0;
  DateTime timeBackPressed = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final difference = DateTime.now().difference(timeBackPressed);
          final isExitWarning = difference >= const Duration(seconds: 2);
          timeBackPressed = DateTime.now();

          if (isExitWarning) {
            return false;
          } else {
            SystemNavigator.pop();
            return true;
          }
        },
        child: Scaffold(
            extendBody: true,
            body: PageView(
              controller: _pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: (int index) {
                setState(
                  () {
                    _pageIndex = index;
                  },
                );
              },
              children: _buildThreePageViewChildren(),
            ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.only(left:10.r,right:10.r,top:10.r),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: BottomNavigationBar(
                  elevation: 0,
                  backgroundColor: kwhite,
                  selectedItemColor: kgray,
                  unselectedItemColor: klightdark,
                  selectedLabelStyle:
                      const TextStyle(fontWeight: FontWeight.w600),
                  type: BottomNavigationBarType.fixed,
                  items: _buildThreeItems(),
                  onTap: (int index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                  currentIndex: _pageIndex,
                ),
              ),
            )));
  }

  List<Widget> _buildThreePageViewChildren() {
    return <Widget>[
const FeedsScreen(),
//const Activity(),
const Schemes(),
const Report_view(),
    ];
  }

  List<BottomNavigationBarItem> _buildThreeItems() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: const Icon(Icons.home_filled),
        ),
        label: 
        'Home',
      ),
      // BottomNavigationBarItem(
      //   icon: Container(
      //     margin: EdgeInsets.only(bottom: 5.h),
      //     child: SvgPicture.asset(_pageIndex == 1 ? FEEDS : FEEDS,
      //         width: _pageIndex == 1 ? 27.w : 27.w,
      //         color: _pageIndex == 1 ? KPink : kgray),
      //   ),
      //   label: 'Activity',
      // ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: const Icon(Icons.laptop),
        ),
        label: 'Sales',
      ),
      BottomNavigationBarItem(
        icon: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: const Icon(Icons.person_2),
        ),
        label: 'Profile',
      ),
    ];
  }
}
