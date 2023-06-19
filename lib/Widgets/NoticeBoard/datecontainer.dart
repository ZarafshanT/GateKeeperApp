import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';

import '../ReusableTextWidget/custom_text.dart';

class DateContainer extends StatelessWidget {
  final double height;
  final double width;

  final Color iconcolor;
  final String text;
  final TextStyle mystyle;
  final BoxDecoration boxDecoration;

  const DateContainer({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.mystyle,
    required this.boxDecoration,
    required this.iconcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: boxDecoration,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8.1.w),
              child: Icon(
                Icons.calendar_month,
                size: 9.w,
                color: iconcolor,
              ),
            ),
            10.14.sbw,
            ReusableText(text: text, style: mystyle),
          ],
        ));
  }
}
