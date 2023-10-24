// ignore_for_file: unnecessary_const, must_be_immutable, prefer_typing_uninitialized_variables

import '../utils/export_file.dart';
import 'package:dropdown_plus_plus/dropdown_plus_plus.dart';

class CustomDropDown extends StatelessWidget {
  String label;
  String textlabel;

  List<String> options;
  dynamic onChanged;
  dynamic hintText;
  dynamic validator;
  double? fontSize;
  FontWeight? fontWeight;

  final textColor;
  CustomDropDown(
      {Key? key,
      this.validator,
      required this.label,
      required this.textlabel,
      this.hintText,
      this.textColor,
      this.fontSize,
      this.fontWeight,
      required this.onChanged,
      required this.options})
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
            textlabel,
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
        Container(
          height: 40.h,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.r),
          ),
          child: TextDropdownFormField(
            dropdownItemColor: KPink,
            onChanged: onChanged,
            options: options,
            decoration: InputDecoration(
              // labelStyle: TextStyle(color: customgrey),
              hintText: hintText,

              hintStyle: TextStyle(
                // color: customgrey,
                color: kblack.withOpacity(0.8),
                fontSize: kTenFont,
                fontWeight: FontWeight.w700,
              ),
              // hintStyle: TextStyle(fontWeight: KF),
              fillColor: kwhite,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: kblack.withOpacity(0.6), width: 0.5), //<-- SEE HERE
                borderRadius: BorderRadius.circular(5.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: kblack.withOpacity(0.6), width: 0.5), //<-- SEE HERE
                borderRadius: BorderRadius.circular(5.r),
              ),
              contentPadding: EdgeInsets.only(left: 10.w),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: kblack.withOpacity(0.6), width: 0.5), //<-- SEE HERE
                borderRadius: BorderRadius.circular(5.r),
              ),
              suffixIcon: Icon(
                Icons.expand_more_outlined,
                color: KPink.withOpacity(0.8),
              ),
            ),
            validator: validator,
            dropdownHeight: 100.h,
          ),
        ),
      ],
    );
  }
}
