import '../../utils/export_file.dart';

class Assistance extends StatefulWidget {
  const Assistance({super.key});

  @override
  State<Assistance> createState() => _AssistanceState();
}

class _AssistanceState extends State<Assistance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Tele Assistance"),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(13.r),
              child: ListView.builder(
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (contex, index) {
                    return Container(
                        height: 180.h,
                        child: Card(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 200.w,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Text(
                                        "Laptop Dell 5000 I5 processor, 8GB RAM, 256 SSD",
                                        maxLines: 3,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12.sp,
                                            fontWeight: kFW500,
                                            color: kblack)),
                                            SizedBox(height: 8.h),
                                            Text(
                                          "Service years : 8",
                                          maxLines: 3,
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontSize: 12.sp,
                                              fontWeight: kFW500,
                                              color: kblack))
                                    ],)
                                  ),
                                  Container(
                                    width: 80.w,
                                    height: 80.h,
                                    padding: EdgeInsets.all(8),
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://static.vecteezy.com/system/resources/thumbnails/019/900/322/small/happy-young-cute-illustration-face-profile-png.png",
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: imageProvider,
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      // placeholder: (context, url) =>
                                      //     const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                    ),
                                  )
                                ],
                              ),
                              
                                   SizedBox(
                                height: 8.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.people,
                                          size: 12,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text("2",
                                            maxLines: 3,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12.sp,
                                                fontWeight: kFW500,
                                                color: kblack))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.call,
                                          size: 12,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text("2",
                                            maxLines: 3,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12.sp,
                                                fontWeight: kFW500,
                                                color: kblack))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.thumb_down,
                                          size: 12,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text("25",
                                            maxLines: 3,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12.sp,
                                                fontWeight: kFW500,
                                                color: kblack))
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.thumb_down,
                                          size: 12,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text("27",
                                            maxLines: 3,
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 12.sp,
                                                fontWeight: kFW500,
                                                color: kblack))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Container(
                                  width: 100.w,
                                  height: 28.h,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF26CBE6),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15.r)),
                                  ),
                                  child: const Center(
                                    child: Text('Book Now',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                            ],
                          ),
                        ));
                  }))),
    );
  }
}
