
import 'package:readmore/readmore.dart';

import '../../utils/export_file.dart';

class Announcement_list extends StatefulWidget {
  const Announcement_list({super.key});

  @override
  State<Announcement_list> createState() => _Announcement_listState();
}

class _Announcement_listState extends State<Announcement_list> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 15,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.r),
                          margin: EdgeInsets.all(13.r),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: kwhite),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 210.w,
                                    child: Text(
                                      "Your Leader",
                                      maxLines: 2,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 12.sp,
                                          fontWeight: kFW600,
                                          color: ktextcolor),
                                    ),
                                  ),
                                  Text(
                                    

                                      "Today 10.30AM",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 9.sp,
                                        fontWeight: kFW600,
                                        color: ktextcolor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              ReadMoreText("Please share your issue; we'll endeavor to provide the best possible solution and assistance.",

                               
                                trimLines: 2,
                                colorClickableText: Colors.pink,
                                style: TextStyle(
                                    wordSpacing: 1,
                                    height: 1.2,
                                    fontSize: kTwelveFont,
                                    fontWeight: kFW500,
                                    color: kdarkgrey),
                                trimMode: TrimMode.Line,
                                trimCollapsedText: 'Read more',
                                trimExpandedText: '...Read less',
                                moreStyle: TextStyle(
                                    letterSpacing: 1,
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 11.sp,
                                    fontWeight: kFW600,
                                    color: KPink),
                                lessStyle: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontSize: 11.sp,
                                    fontWeight: kFW600,
                                    color: klightorange),
                              ),
                            ],
                          ),
                        ),
                       Padding(
                         padding:  EdgeInsets.only(left: 20.w,right: 20.w),
                         child: const Divider(),
                       ),
                      ],
                    );
                  }),

          SizedBox(
            height: 60.h,
          )
        ],
      ),
    );
  }
}