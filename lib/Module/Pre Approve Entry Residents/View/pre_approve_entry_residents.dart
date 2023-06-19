import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatekeeper/Constants/api_routes.dart';
import 'package:gatekeeper/Routes/set_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/api_routes.dart';

import '../../../Constants/constants.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../Controller/pre_approve_entry_residents_controller.dart';

class PreApproveEntryResidents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<PreApproveEntryResdientsController>(
        init: PreApproveEntryResdientsController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
                body: Column(
              children: [
                MyBackButton(
                  text: 'Residents',
                  onTap: () {
                    Get.offNamed(homescreen, arguments: controller.userdata);
                  },
                ),
                Expanded(
                  child: FutureBuilder(
                      future: controller.preApproveEntryResidentApi(
                          controller.userdata.userid!,
                          controller.userdata.bearerToken!),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      Get.toNamed(preApprovedGuests,
                                          arguments: [
                                            snapshot.data.data[index],
                                            controller.userdata.bearerToken!
                                          ]);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          24.w, 32.h, 24.w, 16.h),
                                      child: Container(
                                        width: 327.w,
                                        height: 88.h,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18.r),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color.fromARGB(
                                                  189, 224, 224, 223),
                                              spreadRadius: 5,

                                              blurRadius: 9,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          color: HexColor('#FFFFFF'),
                                        ),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 12.h,
                                                        left: 12.w,
                                                        bottom: 12.h),
                                                    child: Container(
                                                      width: 70.4.w,
                                                      height: 64.h,
                                                      decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  imageBaseUrl +
                                                                      snapshot
                                                                          .data
                                                                          .data![
                                                                              index]
                                                                          .image
                                                                          .toString()),
                                                              fit: BoxFit
                                                                  .cover),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.4.r)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 14.6.w),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          snapshot
                                                                  .data
                                                                  .data![index]
                                                                  .firstname
                                                                  .toString() +
                                                              " " +
                                                              snapshot
                                                                  .data
                                                                  .data![index]
                                                                  .lastname
                                                                  .toString(),
                                                          style: TextStyle(
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 16.sp,
                                                              color: HexColor(
                                                                  '#404345')),
                                                        ),
                                                        SizedBox(height: 8.h),
                                                        Text.rich(
                                                            TextSpan(children: [
                                                          TextSpan(
                                                            text: 'CNIC: ',
                                                            style: TextStyle(
                                                              color: HexColor(
                                                                  '#1A1A1A'),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data
                                                                .data![index]
                                                                .cnic
                                                                .toString(),
                                                            style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                        ])),
                                                        SizedBox(height: 3.h),
                                                        Text.rich(
                                                            TextSpan(children: [
                                                          TextSpan(
                                                            text:
                                                                'Contact No: ',
                                                            style: TextStyle(
                                                              color: HexColor(
                                                                  '#1A1A1A'),
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data
                                                                .data![index]
                                                                .cnic
                                                                .toString(),
                                                            style: TextStyle(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w200,
                                                              fontSize: 12.sp,
                                                            ),
                                                          ),
                                                        ])),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ]),
                                      ),
                                    ));
                              },
                              itemCount: snapshot.data.data.length);
                        } else if (snapshot.hasError) {
                          return Icon(Icons.error_outline);
                        } else {
                          return Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
