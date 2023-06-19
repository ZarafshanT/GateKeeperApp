import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';

import 'package:hexcolor/hexcolor.dart';

import '../ReusableTextWidget/custom_text.dart';
import '../ReusableTextWidget/textstyle.dart';

class Homecards extends StatelessWidget {
  final void Function()? onTap;
  final String? heading;
  final String? description;
  final String iconPath;
  const Homecards({
    super.key,
    required this.heading,
    required this.description,
    required this.onTap,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 31.w, top: 15.h),
        child: Container(
          height: 64.h,
          width: 324.w,
          decoration: BoxDecoration(
              color: HexColor('#FAFAFA'),
              borderRadius: BorderRadius.all(Radius.circular(15.r))),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 24.w,
                ),
                child: Container(
                  height: 43.h,
                  width: 43.w,
                  child: CircleAvatar(
                      maxRadius: 20.r,
                      backgroundColor: Color.fromRGBO(255, 153, 0, 0.35),
                      child: SvgPicture.asset(
                        iconPath,
                        height: 27.h,
                        width: 31.7.w,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h, left: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                        text: heading!,
                        style: txtStyle(13, HexColor('#666592'),
                            FontWeight.w700, FontStyle.normal)),
                    3.sbh,
                    ReusableText(
                        text: description!,
                        style: txtStyle(10, HexColor('#AAA9C9'),
                            FontWeight.w500, FontStyle.normal)),
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: 23.w,
                  top: 25.77.h,
                  bottom: 24.h,
                ),
                child: SvgPicture.asset(
                  'assets/greaterthan.svg',
                  height: 13.44.h,
                  width: 9.02.w,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
