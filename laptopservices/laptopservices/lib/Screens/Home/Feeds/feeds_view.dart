import 'package:laptopservices/utils/export_file.dart';

class FeedsScreen extends StatefulWidget {
  const FeedsScreen({super.key});

  @override
  State<FeedsScreen> createState() => _FeedsScreenState();
}

class _FeedsScreenState extends State<FeedsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: const HomeAppBar(),
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SizedBox(
            height: 45.h,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("Laptop Repair At Home",
                maxLines: 2,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: 20.sp,
                    fontWeight: kFW700,
                    color: kblack)),
          ),
          SizedBox(
            height: 25.h,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 130.h,
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 180.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 350.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50)),
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://i.pinimg.com/originals/94/99/ef/9499ef4235609a75d4a99f4b55213afa.png",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            // placeholder: (context, url) =>
                            //     const CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(8),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                child: GestureDetector(
                  onTap: (){
                    Get.toNamed(KASSIST);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.call),
                        SizedBox(height: 8.h),
                        Text("Telephone Assistance",
                            maxLines: 2,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12.sp,
                                fontWeight: kFW700,
                                color: kblack))
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.toNamed(KSTORES);
                },
                child: Card(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.store),
                        SizedBox(height: 8.h),
                        Text("Stores Near",
                            maxLines: 2,
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 12.sp,
                                fontWeight: kFW700,
                                color: kblack))
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.apple),
                      SizedBox(height: 8.h),
                      Text("Apple",
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                              fontWeight: kFW700,
                              color: kblack))
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.window),
                      SizedBox(height: 8.h),
                      Text("Windows",
                          maxLines: 2,
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 12.sp,
                              fontWeight: kFW700,
                              color: kblack))
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    ));
  }
}
