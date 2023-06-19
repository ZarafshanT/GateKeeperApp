import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Widgets/My%20Button/my_button.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/ReusableTextWidget/textstyle.dart';
import '../Controller/pre_approve_entry_notifcation_controller.dart';

class PreApproveEntryNotification extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PreApproveEntryNotificationController>(
        init: PreApproveEntryNotificationController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
                body: Column(
              children: [
                MyBackButton(
                  text: 'Notification',
                  onTap: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: FutureBuilder(
                      future: controller.preApproveEntryNotificationApi(
                          controller.userdata.userid!,
                          controller.userdata.bearerToken!),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 24.w),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: SizedBox(
                                      width: 327.w,
                                      height: 82.h,
                                      child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0.r),
                                          ),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    19.w, 7.h, 0, 3.h),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      snapshot.data!.data[index]
                                                              .firstname
                                                              .toString() +
                                                          ' ' +
                                                          snapshot
                                                              .data!
                                                              .data[index]
                                                              .lastname
                                                              .toString(),
                                                      maxLines: 1,
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#404345'),
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          letterSpacing: 0.0015,
                                                          fontSize: 16.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    19.w, 30.h, 0, 0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'CNIC: ',
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#AAAAAA'),
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          letterSpacing: 0.0015,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    Text(
                                                      snapshot.data.data[index]
                                                          .cnic,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#AAAAAA'),
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          letterSpacing: 0.0015,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    19.w, 48.h, 0, 0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      "Contact No: ",
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#AAAAAA'),
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          letterSpacing: 0.0015,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    Text(
                                                      snapshot.data.data[index]
                                                          .mobileno,
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#AAAAAA'),
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          letterSpacing: 0.0015,
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    270.w, 40.h, 0, 0),
                                                child: MyButton(
                                                  border: 3.r,
                                                  text: 'Approved',
                                                  color: primaryColor,
                                                  height: 22.h,
                                                  width: 80.w,
                                                  mystyle: btntextStyle(
                                                      10,
                                                      HexColor('#FFFFFF'),
                                                      FontWeight.w400,
                                                      FontStyle.normal),
                                                  onPressed: () {
                                                    controller.approvedApi(
                                                        token: controller
                                                            .userdata
                                                            .bearerToken!,
                                                        status: 1,
                                                        statusdescription:
                                                            'Approved',
                                                        id: snapshot.data
                                                            .data[index].id!);
                                                  },
                                                ),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                );
                              },
                              itemCount: snapshot.data.data.length);
                        } else if (snapshot.hasError) {
                          return Icon(Icons.error_outline);
                        } else {
                          return Center(
                            child: Column(
                              children: [
                                CircularProgressIndicator(
                                  color: primaryColor,
                                ),
                              ],
                            ),
                          );
                        }
                      }),
                ),
              ],
            )),
          );
        });
  }
}
