import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';

Widget MyStatusWidget(
    {required status,
    required color,
    Color? textcolor,
    double? width,
    double? height,
    void Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width ?? 64,
      height: height ?? 18,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(4.r)),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            fontSize: 10.sp,
            color: textcolor ?? HexColor('#FFFFFF'),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ),
  );
}
