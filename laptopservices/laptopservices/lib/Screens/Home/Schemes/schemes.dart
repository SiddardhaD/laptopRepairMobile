import 'package:laptopservices/utils/export_file.dart';

class Schemes extends StatefulWidget {
  const Schemes({super.key});

  @override
  State<Schemes> createState() => _SchemesState();
}

class _SchemesState extends State<Schemes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Sales",
        dontHaveBackAsLeading: true,
      ),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.all(13.r),
              child: ListView.builder(
                  itemCount: 20,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (contex, index) {
                    return Container(
                        height: 250.h,
                        child: Card(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.all(8),
                                child: Text("Warrety",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 20.sp,
                                        fontWeight: kFW700,
                                        color: kblack)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    width: 200.w,
                                    child: Text(
                                        "Laptop Dell 5000 I5 processor, 8GB RAM, 256 SSD",
                                        maxLines: 3,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12.sp,
                                            fontWeight: kFW500,
                                            color: kblack)),
                                  ),
                                  Container(
                                    width: 100.w,
                                    height: 100.h,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://img.freepik.com/free-vector/laptop-cartoon_78370-508.jpg",
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
                              Container(
                                padding: const EdgeInsets.all(8),
                                width: 350.w,
                                child: Text("15,000/-",
                                    maxLines: 3,
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontSize: 15.sp,
                                        fontWeight: kFW800,
                                        color: kblack)),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Delivery ",
                                        maxLines: 3,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 12.sp,
                                            fontWeight: kFW800,
                                            color: kblack)),
                                  ),
                                  Container(
                                    child: Text("Thu, Oct 26",
                                        maxLines: 3,
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontSize: 15.sp,
                                            fontWeight: kFW800,
                                            color: kblack)),
                                  )
                                ],
                              ),
                              SizedBox(height: 8.h,),
                              Padding(
                                padding:const EdgeInsets.only(top: 8),
                                child: Container(
                                  width: 100.w,
                                  height:28.h,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF26CBE6),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15.r)),
                   
                                      ),
                                  child: const Center(
                                    child: Text('Contact',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                                  SizedBox(height: 8.h,),
                            ],
                          ),
                        ));
                  }))),
    );
  }
}
