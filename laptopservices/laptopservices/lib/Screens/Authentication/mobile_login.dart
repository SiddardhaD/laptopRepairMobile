
import '../../utils/export_file.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: kblack,
                ),
              ),
              // IconButton(
              //   onPressed: () {
              //     Get.back();
              //   },
              //   icon: Icon(
              //     Icons.arrow_back_rounded,
              //     size: 25.w,
              //     color: kblack,
              //   ),
              // ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Enter Mobile Number",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: kEighteenFont,
                    fontWeight: kFW700,
                    color: kdarkgrey),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Input your mobile number on the screen for quick and secure account access.",
                maxLines: 2,
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    height: 1.h,
                    fontSize: kTwelveFont,
                    fontWeight: kFW500,
                    color: customgrey),
              ),
              SizedBox(
                height: 25.h,
              ),
              // CustomFormField(
              //   contentPadding: const EdgeInsets.symmetric(
              //       vertical: 12.0, horizontal: 10.0),
              //   maxLines: 1,
              //   readOnly: false,
              //   hintText: "First Name",
              //   label: 'First Name',
              //   fontWeight: kFW600,
              //   fontSize: 11.sp,
              //   textColor: customgrey,
              // ),
              // SizedBox(
              //   height: 18.h,
              // ),
              // CustomFormField(
              //   contentPadding: const EdgeInsets.symmetric(
              //       vertical: 12.0, horizontal: 10.0),
              //   maxLines: 1,
              //   readOnly: false,
              //   hintText: "Last Name",
              //   label: 'Last Name',
              //   fontWeight: kFW600,
              //   fontSize: 11.sp,
              //   textColor: customgrey,
              // ),
              // SizedBox(
              //   height: 18.h,
              // ),
              CustomFormField(
                keyboardType: TextInputType.phone,
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 10.0),
                maxLines: 1,
                readOnly: false,
                hintText: "Mobile Number",
                label: 'Mobile Number',
                fontWeight: kFW600,
                fontSize: 11.sp,
                textColor: customgrey,
                prefix: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Text(
                    "+91",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: kFW700, color: kblack),
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),

              SizedBox(
                height: 200.h,
              ),

              CustomButton(
                  Color: KPink,
                  borderRadius: BorderRadius.circular(10.r),
                  fontWeight: kFW700,
                  fontSize: 12.sp,
                  textColor: kwhite,
                  height: 42.h,
                  width: 328.w,
                  label: "Continue",
                  isLoading: false,
                  onTap: () {
                  }),

              SizedBox(
                height: 25.h,
              ),
              Center(
                child: Text(
                  "or",
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: kFourteenFont,
                      fontWeight: kFW600,
                      color: kduskgrey),
                ),
              ),
              // SizedBox(
              //   height: 25.h,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     CircleAvatar(
              //       backgroundColor: kduskgrey,
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
              //       backgroundColor: kduskgrey,
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
              Center(
                child: RichText(
                  maxLines: 1,
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    text: "By registering you agree to our ",
                    style: TextStyle(
                        fontSize: kTenFont,
                        fontWeight: kFW500,
                        color: kduskgrey),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
