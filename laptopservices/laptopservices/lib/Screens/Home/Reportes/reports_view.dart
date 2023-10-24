import '../../../utils/export_file.dart';

class Report_view extends StatefulWidget {
  const Report_view({super.key});

  @override
  State<Report_view> createState() => _Report_viewState();
}

class _Report_viewState extends State<Report_view> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              customgrey,
              klighttext,
            ], begin: Alignment.topCenter, end: Alignment.center)),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: height / 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage:
                                const NetworkImage('https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                            radius: height / 10,
                          ),
                          SizedBox(
                            height: height / 30,
                          ),
                          const Text(
                            'Sai Kumar',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height / 2.2),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top:280.h, left: 10.w, right: 10.w),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black45,
                                    blurRadius: 2.0,
                                    offset: Offset(0.0, 2.0))
                              ]),
                          child: Padding(
                            padding: EdgeInsets.all(width / 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  headerChild('Orders', 2),
                                  headerChild('Repairs', 10),
                                  headerChild('Serives', 6),
                                ]),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height / 20),
                          child: Column(
                            children: <Widget>[
                              infoChild(
                                  width, Icons.email, 'saikumar@gmail.com'),
                              infoChild(width, Icons.call, '+91 9876543210'),
                              // infoChild(width, Icons.group_add, 'Add to group'),
                              // infoChild(width, Icons.chat_bubble,
                              //     'Show all comments'),
                              Padding(
                                padding: EdgeInsets.only(top: height / 30),
                                child: Container(
                                  width: width / 3,
                                  height: height / 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF26CBE6),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(height / 40)),
                                      // boxShadow: const [
                                      //   BoxShadow(
                                      //       color: Colors.black87,
                                      //       blurRadius: 2.0,
                                      //       offset: Offset(0.0, 1.0))
                                      // ]
                                      ),
                                  child: const Center(
                                    child: Text('Edit',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget headerChild(String header, int value) => Expanded(
          child: Column(
        children: <Widget>[
          Text(header),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            '$value',
            style: const TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 10, 13, 14),
                fontWeight: FontWeight.bold),
          )
        ],
      ));

  Widget infoChild(double width, IconData icon, data) => Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: InkWell(
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20.h,
              ),
              Icon(
                icon,
                color: const Color(0xFF26CBE6),
                size: 26.0,
              ),
              SizedBox(
                width:  20.h,
              ),
              Text(data)
            ],
          ),
          onTap: () {},
        ),
      );
}
