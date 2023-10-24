import '../../utils/export_file.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final textFieldFocusNode = FocusNode();
  final _formKey = GlobalKey<FormState>();
  Authentication authentication = Get.put(Authentication());
  bool obscured = false;

  void _toggleObscured() {
    setState(() {});
  }

  @override
  void initState() {
    authentication.getConstituency();
    super.initState();
  }
  var selectConstituency = "".obs;
  var selectMandal = "Select Mandal".obs;
  var selectVillage = "Select Village".obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15.w),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {},
                    child: RichText(
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: "Already have an account? ",
                        //   నన్ను గుర్తు పెట్టుకో
                        // "Already have an account?  ",
                        style: TextStyle(
                            fontSize: kTenFont,
                            fontWeight: kFW500,
                            color: kduskgrey),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Sign In",
                            // "Sign In / సైన్ ఇన్ చేయండి",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 13.sp,
                                fontWeight: kFW500,
                                color: klightbrown),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 24.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome",
                    maxLines: 2,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: kEighteenFont,
                        fontWeight: kFW700,
                        color: kdarkgrey),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                 Align(
                  alignment: Alignment.centerLeft,
                  child:Text(
                  "Create an account now...",
                  maxLines: 2,
                  textAlign: TextAlign.left,
                  style: TextStyle(

                      overflow: TextOverflow.ellipsis,
                      height: 1.h,
                      fontSize: kTwelveFont,
                      fontWeight: kFW500,
                      color: customgrey),
                )),
                SizedBox(
                  height: 25.h,
                ),
                CustomFormField(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  maxLines: 1,
                  readOnly: false,
                  hintText: "First Name",
                  // "First Name / మొదటి పేరు",
                  label: "First Name",
                  // 'First Name / మొదటి పేరు',
                  fontWeight: kFW600,
                  fontSize: 11.sp,
                  textColor: customgrey,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter some text";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomFormField(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  maxLines: 1,
                  readOnly: false,
                  hintText: "Last Name",
                  // "Last Name / చివరి పేరు",
                  label: "Last Name",
                  fontWeight: kFW600,
                  fontSize: 11.sp,
                  textColor: customgrey,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter some text";
                      //'Please enter some text / దయచేసి కొంత వచనాన్ని నమోదు చేయండి';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomFormField(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  maxLines: 1,
                  readOnly: false,
                  hintText: "Email ID ",
                  //"Email ID / ఇమెయిల్ ID",
                  label: "Email ID ",
                  // 'Email ID / ఇమెయిల్ ID',
                  fontWeight: kFW600,
                  fontSize: 11.sp,
                  textColor: customgrey,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter some text";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 18.h,
                ),
                CustomFormField(
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  maxLines: 1,
                  readOnly: false,
                  hintText: "Phone",
                  // "Last Name / చివరి పేరు",
                  label: "Phone",
                  fontWeight: kFW600,
                  fontSize: 11.sp,
                  textColor: customgrey,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter some text";
                      //'Please enter some text / దయచేసి కొంత వచనాన్ని నమోదు చేయండి';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 18.h,
                ),
                Container(
                  padding: EdgeInsets.only(left: 12.w),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    //   "Password / పాస్వర్డ్",
                    style: TextStyle(
                        fontSize: 11.sp,
                        letterSpacing: 1,
                        color: customgrey,
                        fontWeight: kFW600),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: obscured,
                  // maxLines: maxLines,
                  // focusNode: focusNode,
                  //  keyboardType: keyboardType,
                  style: TextStyle(
                      fontSize: 13.sp, fontWeight: kFW700, color: kblack),
                  decoration: InputDecoration(
                    focusColor: Colors.white,

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10.0),
                    // const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: kblack.withOpacity(0.6), width: 0.5),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    fillColor: Colors.grey,

                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
                      child: GestureDetector(
                        onTap: _toggleObscured,
                        child: Icon(
                          obscured
                              ? Icons.visibility_rounded
                              : Icons.visibility_off_rounded,
                          size: 18.sp,
                          color: klightbrown,
                        ),
                      ),
                    ),

                    hintText: "Password('8+ Characters')",

                    //    "Password('8+ Characters') /   పాస్వర్డ్",
                    alignLabelWithHint: true,

                    //make hint text
                    hintStyle: TextStyle(
                      color: lightgrey.withOpacity(0.5),
                      fontSize: kTenFont,
                      fontWeight: FontWeight.w600,
                    ),

                    //create lable
                  ),
                  focusNode: textFieldFocusNode,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter some text";
                    }
                    return null;
                  },
                  // validator: validator,
                  // onChanged: onChanged
                ),
                SizedBox(
                  height: 18.h,
                ),
                Obx(() => authentication.isConstituencyLoading.value == false
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 12.w),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Select Constituency",
                              //   "Password / పాస్వర్డ్",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  letterSpacing: 1,
                                  color: customgrey,
                                  fontWeight: kFW600),
                            ),
                          ),
                          Container(
                            width: 120.w,
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 0.3,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                icon: const Icon(Icons.keyboard_arrow_down),
                                items: authentication.constituency
                                    .map((dynamic items) {
                                  return DropdownMenuItem(
                                    // value: items["name"],
                                    value : selectConstituency.value,
                                    child: Text(items["name"],
                                        style: TextStyle(
                                            fontSize: 11.sp,
                                            letterSpacing: 1,
                                            color: customgrey,
                                            fontWeight: kFW600)),
                                  );
                                }).toList(),
                                onChanged: (dynamic newValue) {
                                  Map data  = authentication.constituency.where((p0) => p0["name"]==newValue).toList()[0];
                                  selectConstituency.value = newValue!;
                                  debugPrint("${data["id"]}");
                                  authentication.getMandals(data["id"]);
                                },
                              ),
                            ),
                          )
                        ],
                      )
                    : const SizedBox()),
                SizedBox(
                  height: 18.h,
                ),
                Obx(() => authentication.ismandalsLoading.value==false && authentication.mandalsList.isNotEmpty?
                Container(
                  width: 360.w,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: authentication.mandalsList
                          .map((dynamic items) {
                        return DropdownMenuItem(
                          value: items["name"],
                          child: Text(items["name"],
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  letterSpacing: 1,
                                  color: customgrey,
                                  fontWeight: kFW600)),
                        );
                      }).toList(),
                      onChanged: (dynamic newValue) {
                        Map data  = authentication.mandalsList.where((p0) => p0["name"]==newValue).toList()[0];
                        debugPrint("${data["id"]}");
                        authentication.getVillages(data["id"]);
                      },
                    ),
                  ),
                ):const  SizedBox()),

                SizedBox(
                  height: 36.h,
                ),
                Obx(() => authentication.isvillagesLoading.value==false && authentication.villages.isNotEmpty?
                Container(
                  width: 360.w,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.3,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      icon: const Icon(Icons.keyboard_arrow_down),
                      items: authentication.villages
                          .map((dynamic items) {
                        return DropdownMenuItem(
                          value: items["name"],
                          child: Text(items["name"],
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  letterSpacing: 1,
                                  color: customgrey,
                                  fontWeight: kFW600)),
                        );
                      }).toList(),
                      onChanged: (dynamic newValue) {
                        Map data  = authentication.villages.where((p0) => p0["name"]==newValue).toList()[0];
                      },
                    ),
                  ),
                ):const  SizedBox()),
                CustomButton(
                    Color: klightbrown,
                    borderRadius: BorderRadius.circular(10.r),
                    fontWeight: kFW700,
                    fontSize: 12.sp,
                    textColor: kwhite,
                    height: 42.h,
                    width: 328.w,
                    label: "Continue",
                    isLoading: false,
                    onTap: () {}),
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
                RichText(
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
                SizedBox(
                  height: 16.h,
                ),
                // RichText(
                //   maxLines: 1,
                //   textAlign: TextAlign.left,
                //   text: TextSpan(
                //     text: "Login with  ",
                //     style: TextStyle(
                //         fontSize: kTenFont,
                //         fontWeight: kFW500,
                //         color: kduskgrey),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
