import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:hexcolor/hexcolor.dart';

import '../ReusableTextWidget/custom_text.dart';
import '../ReusableTextWidget/textstyle.dart';

class MyBackButton extends StatelessWidget {
  final String? text;
  final Widget? widget;
  void Function()? onTap;

  MyBackButton({this.text, this.widget, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 38.w, top: 74.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 20.h,
              width: 20.w,
              child: SvgPicture.asset(
                "assets/arrow_back.svg",
              ),
            ),
          ),
          20.sbw,
          ReusableText(
              text: text!,
              style: txtStyle(16.sp, HexColor('#4D4D4D'), FontWeight.w500,
                  FontStyle.normal)),
          Container(
            child: widget,
          )
        ],
      ),
    );
  }
}
