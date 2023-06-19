import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Module/Events/View/events_screen.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:gatekeeper/Widgets/My%20Button/my_button.dart';
import 'package:gatekeeper/Widgets/NoticeBoard/AlertDialogeWidget/circle_icon.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/NoticeBoard/AlertDialogeWidget/calenderContainer.dart';
import '../../../Widgets/NoticeBoard/datecontainer.dart';
import '../../../Widgets/ReusableTextWidget/custom_text.dart';
import '../../../Widgets/ReusableTextWidget/textstyle.dart';
import '../Controller/notice_board_controller.dart';
import '../Model/notice_board_model.dart';

class NoticeBoardScreen extends GetView {
  NoticeBoardController noticeBoardController =
      Get.put(NoticeBoardController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<NoticeBoardController>(
      init: NoticeBoardController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
            backgroundColor: HexColor('#FFFFFF'),
            // HexColor('#F5F5F5'),
            body: Stack(
              children: [
                FutureBuilder<List<NoticeBoardModel>>(
                    future: controller.viewNoticeBoardApi(
                        controller.userdata.subadminid!,
                        controller.userdata.bearerToken!),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Column(
                          children: [
                            MyBackButton(
                              text: 'NoticeBoard',
                              onTap: () {
                                Get.back();
                              },
                            ),
                            17.49.sbh,
                            Expanded(
                              child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.r),
                                                  ),
                                                  title: SizedBox(
                                                    width: 347.w,
                                                    height: 321.h,
                                                    child: Column(
                                                      children: [
                                                        Center(
                                                          child: ReusableText(
                                                              text: snapshot
                                                                  .data![index]
                                                                  .noticetitle!,
                                                              style: txtStyle(
                                                                  16,
                                                                  HexColor(
                                                                      '#4D4D4D'),
                                                                  FontWeight
                                                                      .w700,
                                                                  FontStyle
                                                                      .normal)),
                                                        ),
                                                        14.sbh,
                                                        ReusableText(
                                                            text: snapshot
                                                                .data![index]
                                                                .noticedetail!,
                                                            textOverflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            maxlines: 3,
                                                            style: txtStyle(
                                                                12,
                                                                HexColor(
                                                                    '#757575'),
                                                                FontWeight.w400,
                                                                FontStyle
                                                                    .normal)),
                                                        30.38.sbh,
                                                        Row(
                                                          children: [
                                                            CircleIcon(
                                                                iconData:
                                                                    'assets/date.svg'),
                                                            8.sbw,
                                                            ReusableText(
                                                                text: 'Date',
                                                                style: txtStyle(
                                                                    12,
                                                                    HexColor(
                                                                        '#535353'),
                                                                    FontWeight
                                                                        .w400,
                                                                    FontStyle
                                                                        .normal))
                                                          ],
                                                        ),
                                                        8.57.sbh,
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 24.h),
                                                          child: Row(
                                                            children: [
                                                              CalenderContainer(
                                                                  text: snapshot
                                                                      .data![
                                                                          index]
                                                                      .startdate!),
                                                              15.sbw,
                                                              SvgPicture.asset(
                                                                'assets/Arrow 1.svg',
                                                              ),
                                                              15.sbw,
                                                              CalenderContainer(
                                                                text: snapshot
                                                                    .data![
                                                                        index]
                                                                    .enddate
                                                                    .toString(),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            CircleIcon(
                                                                iconData:
                                                                    'assets/clock.svg'),
                                                            8.sbw,
                                                            ReusableText(
                                                                text: 'Time',
                                                                style: txtStyle(
                                                                    12,
                                                                    HexColor(
                                                                        '#535353'),
                                                                    FontWeight
                                                                        .w400,
                                                                    FontStyle
                                                                        .normal))
                                                          ],
                                                        ),
                                                        6.sbh,
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25.w,
                                                                  bottom: 37.h),
                                                          child: Row(
                                                            children: [
                                                              ReusableText(
                                                                  text: snapshot
                                                                      .data![
                                                                          index]
                                                                      .starttime!,
                                                                  style: txtStyle(
                                                                      12,
                                                                      HexColor(
                                                                          '#535353'),
                                                                      FontWeight
                                                                          .w400,
                                                                      FontStyle
                                                                          .normal)),
                                                              3.sbw,
                                                              Container(
                                                                width: 20.w,
                                                                height: 1.h,
                                                                color:
                                                                    primaryColor,
                                                              ),
                                                              3.sbw,
                                                              ReusableText(
                                                                  text: snapshot
                                                                      .data![
                                                                          index]
                                                                      .endtime!,
                                                                  style: txtStyle(
                                                                      12,
                                                                      HexColor(
                                                                          '#535353'),
                                                                      FontWeight
                                                                          .w400,
                                                                      FontStyle
                                                                          .normal))
                                                            ],
                                                          ),
                                                        ),
                                                        Center(
                                                            child: MyButton(
                                                          text: 'OK',
                                                          mystyle: txtStyle(
                                                              12,
                                                              HexColor(
                                                                  '#FFFFFF'),
                                                              FontWeight.w400,
                                                              FontStyle.normal),
                                                          onPressed: () {
                                                            Get.back();
                                                          },
                                                          height: 31.h,
                                                          width: 96.w,
                                                          color: primaryColor,
                                                          outlineBorder:
                                                              RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              7.r)),
                                                          boxDecoration:
                                                              BoxDecoration(
                                                                  boxShadow: [
                                                                BoxShadow(
                                                                    color: Colors
                                                                        .grey
                                                                        .withOpacity(
                                                                            0.3),
                                                                    spreadRadius:
                                                                        7,
                                                                    blurRadius:
                                                                        6)
                                                              ]),
                                                        )),
                                                      ],
                                                    ),
                                                  ),
                                                ));
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            16.w, 14.51.h, 16.w, 0.h),
                                        child: Container(
                                          width: 343.w,
                                          height: 72.h,
                                          decoration: BoxDecoration(
                                              color: Color(0xfffffffff),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: HexColor('#C4C4C4'),
                                                  blurRadius: 3,
                                                  offset: Offset(3, 6),
                                                )
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(4.r)),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                  top: 35.26.h,
                                                  bottom: 0.h,
                                                  child: Image.asset(
                                                    'assets/noticeboard_cardbg.png',
                                                    width: 343.w,
                                                    fit: BoxFit.fill,
                                                  )),
                                              Positioned(
                                                left: 247.w,
                                                child: DateContainer(
                                                    height: 24.h,
                                                    width: 97.w,
                                                    text: snapshot.data![index]
                                                        .startdate!,
                                                    mystyle: txtStyle(
                                                        10,
                                                        Colors.white,
                                                        FontWeight.w300,
                                                        FontStyle.normal),
                                                    boxDecoration:
                                                        BoxDecoration(
                                                      border: Border.all(
                                                          color: HexColor(
                                                              '#E8E8E8')),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        4.r,
                                                      ),
                                                      color: primaryColor,
                                                    ),
                                                    iconcolor:
                                                        HexColor('#FFFFFF')),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 13.w,
                                                  top: 8.h,
                                                ),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ReusableText(
                                                        text: snapshot
                                                            .data![index]
                                                            .noticetitle!,
                                                        style: txtStyle(
                                                            14,
                                                            HexColor('#606470'),
                                                            FontWeight.w500,
                                                            FontStyle.normal)),
                                                    6.sbh,
                                                    ReusableText(
                                                        text: snapshot
                                                            .data![index]
                                                            .noticedetail!,
                                                        textOverflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                        maxlines: 2,
                                                        style: txtStyle(
                                                            12,
                                                            HexColor('#A5AAB7'),
                                                            FontWeight.w500,
                                                            FontStyle.normal))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                  itemCount: snapshot.data!.length),
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
            )),
      ),
    );
  }
}
