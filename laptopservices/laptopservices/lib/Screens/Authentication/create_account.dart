// ignore_for_file: camel_case_types



import '../../utils/export_file.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void deactivate() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    super.deactivate();
  }



  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeRight,
      // DeviceOrientation.landscapeLeft,
    ]);
    return Scaffold(
      //  backgroundColor: kwhite,
      backgroundColor: kdark,
      body: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 15.w, right: 15.w, top: 70.h, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/mla_theme.png",
              width: 266.w,
              // color: ,
              // fit: BoxFit.contain,
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Welcome to MEE-MLA",
              style: TextStyle(
                  overflow: TextOverflow.ellipsis,
                  fontSize: kEighteenFont,
                  fontWeight: kFW700,
                  color: kwhite),
            ),
            SizedBox(
              height: 36.h,
            ),
            CustomButton(
                Color: KPink,
                borderRadius: BorderRadius.circular(10.r),
                fontWeight: kFW700,
                fontSize: 12.sp,
                textColor: kwhite,
                height: 42.h,
                width: 328.w,
                label: "Create Account / ఖాతాను సృష్టించండి",
                isLoading: false,
                onTap: () {
                  setState(() {});
                }),
            SizedBox(
              height: 25.h,
            ),
            // Text(
            //   "or",
            //   style: TextStyle(
            //       overflow: TextOverflow.ellipsis,
            //       fontSize: kFourteenFont,
            //       fontWeight: kFW600,
            //       color: kduskgrey),
            // ),
            SizedBox(
              height: 25.h,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CircleAvatar(
            //       backgroundColor: Colors.transparent,
            //       radius: 30.r,
            //       child: Image.asset(
            //         'assets/images/google_logo.png',
            //         width: 60.w,
            //         height: 60.h,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 25.h,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Colors.transparent,
            //       radius: 30.r,
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(300.0),
            //         child: Image.asset(
            //           'assets/images/fb_logo.png',
            //           width: 60.w,
            //           height: 60.h,
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 25.h,
            //     ),
            //     CircleAvatar(
            //       backgroundColor: Colors.transparent,
            //       radius: 30.r,
            //       child: Image.asset(
            //         'assets/images/apple_logo.png',
            //         width: 60.w,
            //         height: 60.h,
            //       ),
            //     ),
            //   ],
            // ),

            SizedBox(
              height: 16.h,
            ),
            RichText(
              maxLines: 1,
              textAlign: TextAlign.left,
              text: TextSpan(
                text: "By registering you agree to our ",
                style: TextStyle(
                    fontSize: kTenFont, fontWeight: kFW500, color: kduskgrey),
                children: <TextSpan>[
                  TextSpan(
                    text: "Terms of Use",
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: kTenFont,
                        fontWeight: kFW800,
                        color: kduskgrey),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            // RichText(
            //   maxLines: 1,
            //   textAlign: TextAlign.left,
            //   text: TextSpan(
            //     text: "Login with  ",
            //     style: TextStyle(
            //         fontSize: kTenFont, fontWeight: kFW500, color: kduskgrey),
            //     children: <TextSpan>[
            //       TextSpan(
            //         text: "Mobile No",
            //         style: TextStyle(
            //             overflow: TextOverflow.ellipsis,
            //             fontSize: 13.sp,
            //             fontWeight: kFW500,
            //             color: KPink),
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 16.h,
            ),
            GestureDetector(
              onTap: () {
              },
              child: RichText(
                maxLines: 1,
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: "Already have an account?  ",
                  style: TextStyle(
                      fontSize: kTenFont, fontWeight: kFW500, color: kduskgrey),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign In / సైన్ ఇన్ చేయండి",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 13.sp,
                          fontWeight: kFW500,
                          color: KPink),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
