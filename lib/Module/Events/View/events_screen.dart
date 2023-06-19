import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:gatekeeper/Widgets/NoticeBoard/AlertDialogeWidget/circle_icon.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/custom_text.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/textstyle.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Constants/constants.dart';
import '../../../Routes/set_routes.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/NoticeBoard/datecontainer.dart';
import '../Controller/event_screen_controller.dart';
import '../Model/Event.dart';

class EventsScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<EventScreenController>(
        init: EventScreenController(),
        builder: (controller) {
          return SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  FutureBuilder<Event>(
                      future: controller.viewEventsApi(
                          userid: controller.userdata.subadminid!,
                          token: controller.userdata.bearerToken!),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            children: [
                              MyBackButton(
                                text: 'Society Events',
                                onTap: () {
                                  Get.offNamed(homescreen,
                                      arguments: controller.userdata);
                                },
                              ),
                              19.sbh,
                              Expanded(
                                child: ListView.builder(
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              16.r),
                                                    ),
                                                    title: SizedBox(
                                                      height: 179.h,
                                                      width: 307.w,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              bottom: 12.h,
                                                            ),
                                                            child: Center(
                                                                child: ReusableText(
                                                                    text: snapshot
                                                                        .data!
                                                                        .data![
                                                                            index]
                                                                        .title!,
                                                                    style: txtStyle(
                                                                        16,
                                                                        HexColor(
                                                                            '#4D4D4D'),
                                                                        FontWeight
                                                                            .w700,
                                                                        FontStyle
                                                                            .normal))),
                                                          ),
                                                          Center(
                                                              child: ReusableText(
                                                                  text: snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .description!,
                                                                  style: txtStyle(
                                                                      12,
                                                                      HexColor(
                                                                          '#4D4D4D'),
                                                                      FontWeight
                                                                          .w400,
                                                                      FontStyle
                                                                          .normal))),
                                                          19.96.sbh,
                                                          Row(
                                                            children: [
                                                              CircleIcon(
                                                                  iconData:
                                                                      'assets/date.svg'),
                                                              8.01.sbw,
                                                              ReusableText(
                                                                  text: 'Date',
                                                                  style: txtStyle(
                                                                      12,
                                                                      HexColor(
                                                                          '#4D4D4D'),
                                                                      FontWeight
                                                                          .w400,
                                                                      FontStyle
                                                                          .normal))
                                                            ],
                                                          ),
                                                          Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: 27.w,
                                                                top: 8.95.h,
                                                              ),
                                                              child:
                                                                  DateContainer(
                                                                height: 25.h,
                                                                width: 93.w,
                                                                text: snapshot
                                                                    .data!
                                                                    .data![
                                                                        index]
                                                                    .startdate!,
                                                                mystyle: txtStyle(
                                                                    10,
                                                                    HexColor(
                                                                        '#4D4D4D'),
                                                                    FontWeight
                                                                        .w300,
                                                                    FontStyle
                                                                        .normal),
                                                                boxDecoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: HexColor(
                                                                          '#E1E1E1')),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    3.r,
                                                                  ),
                                                                  color: HexColor(
                                                                      '#F6F6F6'),
                                                                ),
                                                                iconcolor:
                                                                    HexColor(
                                                                        '#4D4D4D'),
                                                              )),
                                                          19.sbh,
                                                          Center(
                                                            child: MyButton(
                                                              height: 22.h,
                                                              width: 67.w,
                                                              text: 'OK',
                                                              mystyle: txtStyle(
                                                                  12,
                                                                  Colors.white,
                                                                  FontWeight
                                                                      .w400,
                                                                  FontStyle
                                                                      .normal),
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                              outlineBorder: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.r)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ));
                                        },
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 14.w,
                                              top: 13.h,
                                              right: 18.w),
                                          child: Container(
                                            height: 90.h,
                                            width: 343.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4.r),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: HexColor('#C4C4C4'),
                                                    spreadRadius: 1,
                                                    blurRadius: 3,
                                                    offset: Offset(3, 6),
                                                  )
                                                ]),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 13.w, top: 10.h),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: (snapshot
                                                                      .data!
                                                                      .data![
                                                                          index]
                                                                      .id! %
                                                                  2 ==
                                                              0)
                                                          ? SvgPicture.asset(
                                                              'assets/event_vector_2.svg')
                                                          : SvgPicture.asset(
                                                              'assets/event_vector_1.svg')),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ReusableText(
                                                          text: snapshot
                                                              .data!
                                                              .data![index]
                                                              .title!,
                                                          style: txtStyle(
                                                              14,
                                                              HexColor(
                                                                  '#606470'),
                                                              FontWeight.w500,
                                                              FontStyle
                                                                  .normal)),
                                                      6.sbh,
                                                      ReusableText(
                                                          text: snapshot
                                                              .data!
                                                              .data![index]
                                                              .description!,
                                                          maxlines: 2,
                                                          style: txtStyle(
                                                              11,
                                                              HexColor(
                                                                  '#A5AAB7'),
                                                              FontWeight.w400,
                                                              FontStyle
                                                                  .normal)),
                                                      10.sbh,
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      bottom:
                                                                          0.h),
                                                              child:
                                                                  DateContainer(
                                                                height: 18.h,
                                                                width: 93.w,
                                                                text: snapshot
                                                                    .data!
                                                                    .data![
                                                                        index]
                                                                    .startdate!,
                                                                mystyle: txtStyle(
                                                                    10,
                                                                    HexColor(
                                                                        '#4D4D4D'),
                                                                    FontWeight
                                                                        .w300,
                                                                    FontStyle
                                                                        .normal),
                                                                boxDecoration:
                                                                    BoxDecoration(
                                                                  border: Border.all(
                                                                      color: HexColor(
                                                                          '#E1E1E1')),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    3.r,
                                                                  ),
                                                                  color: HexColor(
                                                                      '#F6F6F6'),
                                                                ),
                                                                iconcolor:
                                                                    HexColor(
                                                                        '#4D4D4D'),
                                                              )),
                                                          12.sbw,
                                                          MyButton(
                                                            height: 18.h,
                                                            width: 63.w,
                                                            text: 'View Image',
                                                            mystyle: txtStyle(
                                                                8,
                                                                Colors.white,
                                                                FontWeight.w500,
                                                                FontStyle
                                                                    .normal),
                                                            onPressed: () {
                                                              Get.back();
                                                            },
                                                            outlineBorder: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            4.r)),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                    itemCount: snapshot.data!.data!.length),
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Icon(Icons.error_outline);
                        } else {
                          return Center(
                              child: CircularProgressIndicator(
                            color: primaryColor,
                          ));
                        }
                      }),
                ],
              ),
            ),
          );
        });
  }
}
