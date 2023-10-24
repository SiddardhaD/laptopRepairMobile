import '../../utils/export_file.dart';

class OTPVerify extends StatefulWidget {
  const OTPVerify({super.key});

  @override
  State<OTPVerify> createState() => _OTPVerifyState();
}

class _OTPVerifyState extends State<OTPVerify> {
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
                "Enter OTP",
                style: TextStyle(
                    overflow: TextOverflow.ellipsis,
                    fontSize: kEighteenFont,
                    fontWeight: kFW700,
                    color: kdarkgrey),
              ),
              SizedBox(
                height: 15.h,
              ),
              RichText(
                maxLines: 1,
                textAlign: TextAlign.left,
                text: TextSpan(
                  text: "Sent to  ",
                  style: TextStyle(
                      fontSize: kTwelveFont,
                      fontWeight: kFW500,
                      color: customgrey),
                  children: <TextSpan>[
                    TextSpan(
                      text: "+91 9959227947",
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: kTwelveFont,
                          fontWeight: kFW500,
                          color: kdarkgrey),
                    ),
                  ],
                ),
              ),

              // Text(
              //   "Input your mobile number on the screen for quick and secure account access.",
              //   maxLines: 2,
              //   style: TextStyle(
              //       overflow: TextOverflow.ellipsis,
              //       height: 1.h,
              //       fontSize: kTwelveFont,
              //       fontWeight: kFW500,
              //       color: customgrey),
              // ),
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
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.r),
                    color: kwhite,
                    boxShadow: [
                      BoxShadow(
                        color: ktextcolor.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                        spreadRadius: 1,
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(
                      left: 32.w, right: 32.w, top: 24.h, bottom: 12.h),
                  child: Column(
                    children: [
                      OTPTextField(
                        length: 4,
                        width: 195.w,
                        fieldWidth: 40.w,
                        margin: EdgeInsets.only(right: 8.w),
                        fieldStyle: FieldStyle.box,
                        outlineBorderRadius: 5,
                        style: TextStyle(
                            fontSize: kEighteenFont,
                            fontWeight: kFW500,
                            color: kdarkgrey),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        //  otpFieldStyle: BoxDecoration(borderRadius: 10),
                        // fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {},
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      // RichText(
                      //   maxLines: 1,
                      //   textAlign: TextAlign.left,
                      //   text: TextSpan(
                      //     text: "Resending OTP in ",
                      //     style: TextStyle(
                      //         fontSize: kTenFont,
                      //         fontWeight: kFW500,
                      //         color: kduskgrey),
                      //     children: <TextSpan>[
                      //       TextSpan(
                      //         text: "  58s",
                      //         style: TextStyle(
                      //             overflow: TextOverflow.ellipsis,
                      //             fontSize: kTenFont,
                      //             fontWeight: kFW500,
                      //             color: kdarkgrey),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Resending OTP in ",
                            // '$minutes:$seconds',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: kTenFont,
                                fontWeight: kFW500,
                                color: kduskgrey),
                          ),
                          TweenAnimationBuilder<Duration>(
                              duration: const Duration(minutes: 3),
                              tween: Tween(
                                  begin: const Duration(minutes: 3),
                                  end: Duration.zero),
                              onEnd: () {},
                              builder: (BuildContext context, Duration value,
                                  Widget? child) {
                                //   final minutes = value.inMinutes;
                                final seconds = value.inSeconds % 60;
                                return Padding(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 5),
                                    child: Text(
                                      '$seconds s',
                                      // '$minutes:$seconds',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: kTenFont,
                                          fontWeight: kFW500,
                                          color: kdarkgrey),
                                    ));
                              }),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "Wrong Number?",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: kTwelveFont,
                            fontWeight: kFW500,
                            color: KPink),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 200.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Didn’t receive the OTP?",
                  style: TextStyle(
                      fontSize: kTenFont, fontWeight: kFW500, color: kduskgrey),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.restore,
                    size: 20.sp,
                    color: KPink,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    "Resend",
                    style: TextStyle(
                        fontSize: kTwelveFont,
                        fontWeight: kFW500,
                        color: KPink),
                  ),
                ],
              ),

              SizedBox(
                height: 18.h,
              ),

              CustomButton(
                  Color: KPink,
                  borderRadius: BorderRadius.circular(10.r),
                  fontWeight: kFW700,
                  fontSize: 12.sp,
                  textColor: kwhite,
                  height: 42.h,
                  width: 328.w,
                  label: "Verify",
                  isLoading: false,
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
