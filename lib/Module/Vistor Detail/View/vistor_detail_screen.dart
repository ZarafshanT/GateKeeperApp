import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:gatekeeper/Widgets/NoticeBoard/datecontainer.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/custom_text.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/textstyle.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Constants/constants.dart';
import '../../../Routes/set_routes.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/NoticeBoard/AlertDialogeWidget/circle_icon.dart';
import '../../../Widgets/VisitorDetailWidgets/visitor_detail_widgets.dart';
import '../Controller/vistor_detail_controller.dart';

class VistorDetailScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<VistorDetailController>(
        init: VistorDetailController(),
        builder: (controller) {
          return WillPopScope(
            onWillPop: () async {
              Get.offNamed(homescreen, arguments: controller.userdata);
              return false;
            },
            child: SafeArea(
              child: Scaffold(
                  backgroundColor: Colors.white,
                  floatingActionButton: IconButton(
                      padding: EdgeInsets.only(top: 85),
                      iconSize: MediaQuery.of(context).size.height * 0.065,
                      icon: SvgPicture.asset('assets/floatingbutton.svg'),
                      onPressed: () {
                        Get.offNamed(addVistorDetailScreen,
                            arguments: controller.userdata);
                      }),
                  body: Column(
                    children: [
                      MyBackButton(
                        text: 'Vistors',
                        onTap: () {
                          Get.offNamed(homescreen,
                              arguments: controller.userdata);
                        },
                      ),
                      17.49.sbh,
                      Expanded(
                        child: FutureBuilder(
                            future: controller.viewVistorsDetailApi(
                                controller.userdata.societyid!,
                                controller.userdata.bearerToken!),
                            builder:
                                (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                                if (snapshot.data.data != null &&
                                    snapshot.data.data!.length != 0) {
                                  return ListView.builder(
                                      itemBuilder: (context, index) {
                                        if (snapshot.data.data[index].status ==
                                            0) {
                                          return GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) =>
                                                          AlertDialog(
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.r)),
                                                            title: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Center(
                                                                    child: ReusableText(
                                                                        text: snapshot
                                                                            .data
                                                                            .data[
                                                                                index]
                                                                            .name,
                                                                        style: txtStyle(
                                                                            18,
                                                                            HexColor('#4D4D4D'),
                                                                            FontWeight.w700,
                                                                            FontStyle.normal))),
                                                                30.sbh,
                                                                Column(
                                                                  children: [
                                                                    Container(
                                                                      child:
                                                                          IntrinsicHeight(
                                                                        child:
                                                                            Row(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.stretch,
                                                                          children: [
                                                                            Expanded(
                                                                              child: Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      children: [
                                                                                        CircleIcon(
                                                                                          iconData: 'assets/person.svg',
                                                                                        ),
                                                                                        8.sbw,
                                                                                        ReusableText(text: 'Description', style: txtStyle(12, HexColor('#4D4D4D'), FontWeight.w400, FontStyle.normal)),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(left: 22.3.w, top: 5.97.h),
                                                                                      child: ReusableText(
                                                                                        text: snapshot.data.data[index].houseaddress,
                                                                                        style: txtStyle(16, HexColor('#1A1A1A'), FontWeight.w300, FontStyle.normal),
                                                                                      ),
                                                                                    ),
                                                                                    29.33.sbh,
                                                                                    Row(children: [
                                                                                      CircleIcon(
                                                                                        iconData: 'assets/Car.svg',
                                                                                      ),
                                                                                      8.sbw,
                                                                                      ReusableText(text: 'Vehicle No', style: txtStyle(12, HexColor('#4D4D4D'), FontWeight.w400, FontStyle.normal)),
                                                                                    ]),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(left: 22.3.w, top: 5.97),
                                                                                      child: ReusableText(text: snapshot.data.data[index].vechileno.toString(), style: txtStyle(16, HexColor('#1A1A1A'), FontWeight.w300, FontStyle.normal)),
                                                                                    ),
                                                                                    29.33.sbh,
                                                                                    Row(
                                                                                      children: [
                                                                                        CircleIcon(
                                                                                          iconData: 'assets/visitor.svg',
                                                                                        ),
                                                                                        8.sbw,
                                                                                        ReusableText(text: 'Visitor Type', style: txtStyle(12, HexColor('#4D4D4D'), FontWeight.w400, FontStyle.normal))
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(left: 22.3, top: 5.97.h),
                                                                                      child: ReusableText(text: snapshot.data.data[index].visitortype, style: txtStyle(16, HexColor('#1A1A1A'), FontWeight.w300, FontStyle.normal)),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                child: Column(
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Row(
                                                                                      children: [
                                                                                        CircleIcon(
                                                                                          iconData: 'assets/date.svg',
                                                                                        ),
                                                                                        8.sbw,
                                                                                        ReusableText(text: 'Date', style: txtStyle(12, HexColor('#4D4D4D'), FontWeight.w400, FontStyle.normal)),
                                                                                      ],
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(left: 22.3.w, top: 5.97.h),
                                                                                      child: ReusableText(text: snapshot.data.data[index].arrivaldate, style: txtStyle(16, HexColor('#1A1A1A'), FontWeight.w300, FontStyle.normal)),
                                                                                    ),
                                                                                    29.33.sbh,
                                                                                    Row(children: [
                                                                                      CircleIcon(
                                                                                        iconData: 'assets/clock.svg',
                                                                                      ),
                                                                                      8.sbw,
                                                                                      ReusableText(text: 'Check-In Time', style: txtStyle(12, HexColor('#4D4D4D'), FontWeight.w400, FontStyle.normal)),
                                                                                    ]),
                                                                                    Padding(
                                                                                      padding: EdgeInsets.only(left: 22.3.w, top: 5.97.h),
                                                                                      child: ReusableText(text: snapshot.data.data[index].arrivaltime, style: txtStyle(16, HexColor('#1A1A1A'), FontWeight.w300, FontStyle.normal)),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                45.39.sbh,
                                                                Center(
                                                                    child:
                                                                        MyButton(
                                                                  text: 'OK',
                                                                  mystyle: txtStyle(
                                                                      12,
                                                                      HexColor(
                                                                          '#FFFFFF'),
                                                                      FontWeight
                                                                          .w400,
                                                                      FontStyle
                                                                          .normal),
                                                                  onPressed:
                                                                      () {
                                                                    Get.back();
                                                                  },
                                                                  height: 31.h,
                                                                  width: 96.w,
                                                                  color:
                                                                      primaryColor,
                                                                  outlineBorder:
                                                                      RoundedRectangleBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(7.r)),
                                                                  boxDecoration:
                                                                      BoxDecoration(
                                                                          boxShadow: [
                                                                        BoxShadow(
                                                                            color: Colors.grey.withOpacity(
                                                                                0.8),
                                                                            spreadRadius:
                                                                                4,
                                                                            blurRadius:
                                                                                10)
                                                                      ]),
                                                                )),
                                                              ],
                                                            ),
                                                          ));
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  24.w, 14.51.h, 24.w, 0),
                                              child: Container(
                                                width: 343.w,
                                                height: 90.h,
                                                decoration: BoxDecoration(
                                                    color: Color(0xfffffffff),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            HexColor('#C4C4C4'),
                                                        blurRadius: 5,
                                                        offset: Offset(0, 5),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            4.r)),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.topRight,
                                                        child: DateContainer(
                                                            height: 27.h,
                                                            width: 105.w,
                                                            text: snapshot
                                                                .data
                                                                .data[index]
                                                                .arrivaldate
                                                                .toString(),
                                                            mystyle: txtStyle(
                                                                12,
                                                                HexColor(
                                                                    '#A5AAB7'),
                                                                FontWeight.w500,
                                                                FontStyle
                                                                    .normal),
                                                            boxDecoration:
                                                                BoxDecoration(
                                                              border: Border.all(
                                                                  color: HexColor(
                                                                      '#E8E8E8')),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                4.r,
                                                              ),
                                                              color: HexColor(
                                                                  '#F6F6F6'),
                                                            ),
                                                            iconcolor: HexColor(
                                                                '#A7A7A7'))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                13.w,
                                                                11.h,
                                                                0,
                                                                8.h),
                                                        child: ReusableText(
                                                            text: snapshot
                                                                .data
                                                                .data[index]
                                                                .name
                                                                .toString(),
                                                            style: txtStyle(
                                                                14,
                                                                HexColor(
                                                                    '#606470'),
                                                                FontWeight.w500,
                                                                FontStyle
                                                                    .normal))),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                13, 36, 0, 6.h),
                                                        child: Text.rich(
                                                            TextSpan(children: [
                                                          TextSpan(
                                                            text:
                                                                'Vehicle No :',
                                                            style: GoogleFonts
                                                                .ubuntu(
                                                              color: HexColor(
                                                                  '#A5AAB7'),
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text: snapshot
                                                                .data
                                                                .data[index]
                                                                .vechileno,
                                                            style: GoogleFonts
                                                                .ubuntu(
                                                              color: HexColor(
                                                                  '#606470'),
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontStyle:
                                                                  FontStyle
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ]))),
                                                    (snapshot.data.data[index]
                                                                .status ==
                                                            0)
                                                        ? Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .fromLTRB(
                                                                    0,
                                                                    44,
                                                                    14,
                                                                    0),
                                                            child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child:
                                                                  MyStatusWidget(
                                                                      onTap:
                                                                          () {
                                                                        controller
                                                                            .currentDate = controller.currentDateTime.year
                                                                                .toString() +
                                                                            "-" +
                                                                            controller.currentDateTime.month.toString() +
                                                                            "-" +
                                                                            controller.currentDateTime.day.toString();

                                                                        controller
                                                                            .currentTime = controller.currentDateTime.hour
                                                                                .toString() +
                                                                            ":" +
                                                                            controller.currentDateTime.minute.toString() +
                                                                            ":" +
                                                                            controller.currentDateTime.second.toString();

                                                                        controller.UpdateVistorDetailApi(
                                                                            token:
                                                                                controller.userdata.bearerToken!,
                                                                            vid: snapshot.data.data[index].id,
                                                                            checkoutdate: controller.currentDate!,
                                                                            checkouttime: controller.currentTime!);
                                                                      },
                                                                      status:
                                                                          'Check-Out',
                                                                      color: HexColor(
                                                                          '#E85C5C')),
                                                            ),
                                                          )
                                                        : Container(),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                13.w,
                                                                56.h,
                                                                0,
                                                                0),
                                                        child: ReusableText(
                                                            text: snapshot
                                                                .data
                                                                .data[index]
                                                                .houseaddress,
                                                            style: txtStyle(
                                                                12,
                                                                HexColor(
                                                                    '#A5AAB7'),
                                                                FontWeight.w500,
                                                                FontStyle
                                                                    .normal))),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        } else {
                                          return Center(
                                              child: ReusableText(
                                                  text: 'No Vistor',
                                                  style: txtStyle(
                                                      16,
                                                      HexColor('#404345'),
                                                      FontWeight.w500,
                                                      FontStyle.normal)));
                                        }
                                      },
                                      itemCount: snapshot.data.data.length);
                                } else {
                                  return Center(
                                      child: ReusableText(
                                          text: 'No Vistor',
                                          style: txtStyle(
                                              16,
                                              HexColor('#404345'),
                                              FontWeight.w500,
                                              FontStyle.normal)));
                                }
                              } else if (snapshot.hasError) {
                                return Icon(Icons.error_outline);
                              } else {
                                return Center(
                                    child: CircularProgressIndicator(
                                  color: primaryColor,
                                ));
                              }
                            }),
                      ),
                    ],
                  )),
            ),
          );
        });
  }
}
