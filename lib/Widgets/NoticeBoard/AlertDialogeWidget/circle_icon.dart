import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CircleIcon extends StatelessWidget {
  final String iconData;

  const CircleIcon({
    super.key,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.14.h,
      width: 16.03.w,
      child: CircleAvatar(
          maxRadius: 16.r,
          backgroundColor: Color.fromRGBO(255, 153, 0, 0.35),
          child: Center(
            child: SvgPicture.asset(
              iconData,
            ),
          )),
    );
  }
}
