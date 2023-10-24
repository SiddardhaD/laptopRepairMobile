// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:laptopservices/utils/export_file.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hintText;
  dynamic validator;
  dynamic contentPadding;

  bool readOnly;
  dynamic value;
  dynamic focusNode;
  int maxLines;
  dynamic onChanged;
  Widget? prefix;
  TextInputType? keyboardType;
  String label;
  TextStyle? hintStyle;
  double? fontSize;
  FontWeight? fontWeight;

  final textColor;

  //keyboardType: TextInputType.datetime,

  Widget? suffix;
  CustomFormField(
      {Key? key,
      this.keyboardType,
      this.prefix,
      this.focusNode,
      required this.maxLines,
      this.suffix,
      this.hintStyle,
      this.value,
      this.onChanged,
      this.contentPadding,
      this.validator,
      required this.readOnly,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      required this.label,
      this.controller,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 12.w),
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: fontSize,
                letterSpacing: 1,
                color: customgrey,
                fontWeight: fontWeight),
          ),
        ),
        SizedBox(
          height: 3.h,
        ),
        TextFormField(
            controller: controller,
            maxLines: maxLines,
            focusNode: focusNode,
            keyboardType: keyboardType,
            
            style:
                TextStyle(fontSize: 13.sp, fontWeight: kFW700, color: kblack),
            decoration: InputDecoration(
              focusColor: Colors.white,

              contentPadding: contentPadding,
              // const EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.r),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(5.r),
              ),
              errorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(5.r),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: kblack.withOpacity(0.6), width: 0.5),
                borderRadius: BorderRadius.circular(5.r),
              ),
              fillColor: Colors.grey,
              suffixIcon: suffix,
              prefixIcon: prefix,
              hintText: hintText,
              alignLabelWithHint: true,
              //make hint text
              hintStyle:hintStyle?? TextStyle(
                color: lightgrey.withOpacity(0.5),
                fontSize: kTenFont,
                fontWeight: FontWeight.w600,
              ),

              //create lable
            ),
            readOnly: readOnly,
            validator: validator,
            onChanged: onChanged),
      ],
    );
  }
}
