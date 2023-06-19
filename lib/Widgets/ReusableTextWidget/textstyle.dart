import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle txtStyle(
  double size,
  Color color,
  FontWeight fw,
  FontStyle fontStyle,
) {
  return GoogleFonts.ubuntu(
    fontSize: size.sp,
    color: color,
    fontWeight: fw,
    fontStyle: fontStyle,
  );
}

TextStyle btntextStyle(
    double size, Color color, FontWeight fw, FontStyle fontStyle) {
  return GoogleFonts.roboto(
      fontSize: size.sp, color: color, fontWeight: fw, fontStyle: fontStyle);
}

// TextStyle montserratStyle(
//     double size, Color color, FontWeight fw, FontStyle fontStyle) {
//   return GoogleFonts.montserrat(
//       fontSize: size.sp, color: color, fontWeight: fw, fontStyle: fontStyle);
// }
