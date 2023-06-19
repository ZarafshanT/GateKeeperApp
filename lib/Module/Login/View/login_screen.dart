import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';
import '../../../Widgets/ReusableTextWidget/custom_text.dart';

import '../../../Widgets/ReusableTextWidget/textstyle.dart';
import '../Controller/login_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // bool _obscureText = true;
  final _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<LoginController>(
            init: LoginController(),
            builder: (controller) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(left: 15.0.w, right: 17.w),
                  child: Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 91.h, bottom: 40.27.h),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/login_img.svg',
                                height: 240.73.h,
                                width: 235.w,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 29.w),
                            child: ReusableText(
                                text: 'Welcome To',
                                style: txtStyle(36, HexColor('#4D4D4D'),
                                    FontWeight.w500, FontStyle.normal)),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 31.w, vertical: 10.h),
                              child: ReusableText(
                                  text: 'YOUR ACCOUNT',
                                  style: txtStyle(15, HexColor('#717171'),
                                      FontWeight.w400, FontStyle.normal))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 143.w, top: 34.h, bottom: 25.h),
                              child: ReusableText(
                                  text: 'Log In',
                                  style: txtStyle(20, HexColor('#FF9900'),
                                      FontWeight.w500, FontStyle.normal))),
                          MyTextFormField(
                            hintText: 'Enter CNIC',
                            hintstyle: txtStyle(16, HexColor('#929292'),
                                FontWeight.w400, FontStyle.normal),
                            controller: controller.userCnicController,
                            validator: emptyStringValidator,
                          ),
                          12.sbh,
                          MyTextFormField(
                            hintText: 'Enter Password',
                            hintstyle: txtStyle(16, HexColor('#929292'),
                                FontWeight.w400, FontStyle.normal),
                            controller: controller.userPasswordController,
                            validator: emptyStringValidator,
                            isPassword: true,
                          ),
                          45.sbh,
                          MyButton(
                            width: 343.w,
                            height: 48.h,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                controller.loginApi(
                                    controller.userCnicController.text,
                                    controller.userPasswordController.text);
                              }
                            },
                            text: 'Login',
                            mystyle: btntextStyle(17, HexColor('#FFFFFF'),
                                FontWeight.w500, FontStyle.normal),
                          ),
                          27.sbh,
                          Divider(
                            thickness: 1.h,
                            indent: 102,
                            endIndent: 103,
                            color: HexColor('#FF9900'),
                          ),
                          5.sbh,
                          Padding(
                              padding: EdgeInsets.only(left: 94.w),
                              child: ReusableText(
                                  text: 'Forgot your password?',
                                  style: txtStyle(15, HexColor('#B6B6B6'),
                                      FontWeight.w400, FontStyle.normal))),
                        ]),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
