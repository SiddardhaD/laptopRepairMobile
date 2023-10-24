import '../../utils/export_file.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _checkbox = true;
  final _formKey = GlobalKey<FormState>();
  final textFieldFocusNode = FocusNode();
  Authentication authentication = Get.put(Authentication());
  bool obscured = false;

  void _toggleObscured() {
    setState(() {});
  }

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
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.toNamed(KSIGNINUSER);
                    },
                    child: RichText(
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: "Don't have an account?  ",
                        // "Don't have an account? / ఖాతా లేదా? ",
                        style: TextStyle(
                            fontSize: kTenFont,
                            fontWeight: kFW500,
                            color: kduskgrey),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Sign Up",
                            // "Sign Up / ఖాతాను సృష్టించండి",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 13.sp,
                                fontWeight: kFW500,
                                color:  kteel),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Welcome",
                    //   "Welcome to MEE-MLA / మీ-ఎమ్మెల్యే కి స్వాగతం",
                    maxLines: 2,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: kEighteenFont,
                        fontWeight: kFW800,
                        color: kdarkgrey),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Let's get Started",
                    //  "Let's get Started / ప్రారంభిద్దాం",
                    maxLines: 2,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        height: 1.h,
                        fontSize: kTwelveFont,
                        fontWeight: kFW500,
                        color: customgrey),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),

                CustomFormField(
                  keyboardType: TextInputType.number,
                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 10.0),
                  maxLines: 1,
                  readOnly: false,
                  hintText: "Mobile",
                  //"First Name / మొదటి పేరు",
                  label: "Mobile",
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
                    //  "Password / పాస్వర్డ్",
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
                  style: TextStyle(
                      fontSize: 13.sp, fontWeight: kFW700, color: kblack),
                  decoration: InputDecoration(
                    focusColor: Colors.white,

                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10.0),
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
                          color:  kteel,
                        ),
                      ),
                    ),

                    hintText: "Password",
                    // "Password('8+ Characters') /   పాస్వర్డ్",
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
                ),

                CheckboxListTile(
                  contentPadding: const EdgeInsets.all(0),
                  controlAffinity: ListTileControlAffinity.leading,
                  checkColor:  kteel,
                  activeColor: kwhite,
                  side: MaterialStateBorderSide.resolveWith(
                    (states) =>
                        const BorderSide(width: 1.0, color:  kteel),
                  ),
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  title: Transform.translate(
                    offset: const Offset(-20, 0),
                    child: Text(
                      "Remember me",
                      //   "Remember me", నన్ను గుర్తు పెట్టుకో
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: kTenFont,
                          fontWeight: kFW500,
                          color: kduskgrey),
                    ),
                  ),
                  value: _checkbox,
                  onChanged: (value) {
                    (value!);
                    setState(() => _checkbox = !_checkbox);
                  },
                ),

                SizedBox(
                  height: 150.h,
                ),
                CustomButton(
                    Color: kteel,
                    borderRadius: BorderRadius.circular(10.r),
                    fontWeight: kFW700,
                    fontSize: 12.sp,
                    textColor: kwhite,
                    height: 42.h,
                    width: 328.w,
                    label: "Sign In",
                    isLoading: false,
                    onTap: () {
                      var payload = {
                        "email": authentication.loginphoneController.text,
                        "password": authentication.loginPasswordController.text
                      };

                      Get.toNamed(KBottom_navigation);
                    // }
                    // onTap: () {
                    //   var payload = {
                    //     "email": apiController.loginEmailController.text,
                    //     "password": apiController.loginPasswordController.text
                    //   };

                      // authentication.login(payload);
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
                GestureDetector(
                  onTap: () {
                    Get.toNamed(KSIGNUP);
                  },
                  child: RichText(
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: "Start  ",
                      style: TextStyle(
                          fontSize: kTenFont,
                          fontWeight: kFW500,
                          color: kduskgrey),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Working",
                          style: TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 13.sp,
                              fontWeight: kFW500,
                              color:  kteel),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
