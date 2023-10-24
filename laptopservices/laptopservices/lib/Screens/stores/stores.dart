import '../../utils/export_file.dart';

class Stores extends StatefulWidget {
  const Stores({super.key});

  @override
  State<Stores> createState() => _StoresState();
}

class _StoresState extends State<Stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Stores"),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                SizedBox(
                  height: 66.h,
                  width: 75.w,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://i.pinimg.com/1200x/24/04/c9/2404c91146bc7458c300695e8c0bd19e.jpg",
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(80)),
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
                ),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  width: 50.w,
                  child: Text("Lenovo Stores",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: kTenFont,
                          fontWeight: kFW700,
                          color: kduskgrey)),
                )
              ]),
            );
          }),
    );
  }
}
