import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:hexcolor/hexcolor.dart';

import '../../../Constants/constants.dart';
import '../../ReusableTextWidget/custom_text.dart';
import '../../ReusableTextWidget/textstyle.dart';

class CalenderContainer extends StatelessWidget {
  final String? text;
  const CalenderContainer({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 82.w,
      height: 25.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.r),
          border: Border.all(color: primaryColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ReusableText(
              text: text!,
              style: txtStyle(
                  10, HexColor('#535353'), FontWeight.w300, FontStyle.normal)),
          SvgPicture.asset('assets/complain_history_date_icon1.svg')
        ],
      ),
    );
  }
}
