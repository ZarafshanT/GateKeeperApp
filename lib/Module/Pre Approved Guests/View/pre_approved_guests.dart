import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gatekeeper/Module/Pre%20Approved%20Guests/Controller/pre_approve_entries_controller.dart';
import 'package:gatekeeper/Widgets/My%20TextForm%20Field/my_textform_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../Widgets/My Back Button/my_back_button.dart';

class PreApprovedGuests extends GetView {
  bool isChecked = false;
  bool isCheckedOut = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GetBuilder<PreApproveEntries>(
            init: PreApproveEntries(),
            builder: (controller) {
              return Scaffold(
                body: Column(
                  children: [
                    MyBackButton(
                      text: 'Pre Approve Entry',
                    ),
                    Expanded(
                      child: FutureBuilder(
                          future: controller.preApproveEntriesApi(
                              controller.data.userid, controller.token),
                          builder:
                              (BuildContext context, AsyncSnapshot snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                itemCount: snapshot.data.data.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 13),
                                      child: SizedBox(
                                        width: 343,
                                        height: 79,
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: SvgPicture.asset(
                                                    'assets/cardbg.svg',
                                                    fit: BoxFit.fill),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    12, 11, 0, 0),
                                                child: Text(
                                                  snapshot
                                                      .data.data[index].name,
                                                  style: GoogleFonts.montserrat(
                                                      color:
                                                          HexColor('#4D4D4D'),
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        13, 32, 75, 0),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 3,
                                                      'Vistor Type: ',
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#757575'),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                    Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 3,
                                                      snapshot.data.data[index]
                                                          .visitortype
                                                          .toString(),
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#757575'),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 50, 0, 0),
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 11.2,
                                                    ),
                                                    Text(
                                                      'Expected Time: ',
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#A5AAB7'),
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w300),
                                                    ),
                                                    Text(
                                                      snapshot.data.data[index]
                                                          .arrivaltime,
                                                      style: GoogleFonts.ubuntu(
                                                          color: HexColor(
                                                              '#A5AAB7'),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (snapshot.data.data[index]
                                                      .status ==
                                                  1) ...[
                                                GestureDetector(
                                                  onTap: () {
                                                    showDialog(
                                                        context: context,
                                                        builder:
                                                            (BuildContext
                                                                    context) =>
                                                                AlertDialog(
                                                                  title: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Center(
                                                                          child:
                                                                              Text(
                                                                        'Pre Approve Entry',
                                                                        style: GoogleFonts.ubuntu(
                                                                            color: HexColor(
                                                                                '#4D4D4D'),
                                                                            fontSize:
                                                                                18,
                                                                            fontWeight:
                                                                                FontWeight.w700),
                                                                      )),
                                                                      SizedBox(
                                                                        height:
                                                                            24,
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            MyTextFormField(
                                                                          controller:
                                                                              controller.cnicController,
                                                                          width:
                                                                              173,
                                                                          height:
                                                                              30,
                                                                          // labelText: "CNIC",
                                                                          hintText:
                                                                              'CNIC',
                                                                          hintstyle:
                                                                              null,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            14,
                                                                      ),
                                                                      Center(
                                                                        child:
                                                                            MyTextFormField(
                                                                          controller:
                                                                              controller.vechilenoController,
                                                                          width:
                                                                              173,
                                                                          height:
                                                                              30,
                                                                          // labelText: "VEHICLE NO",
                                                                          hintText:
                                                                              'VEHICLE NO',
                                                                          hintstyle:
                                                                              null,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            37,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsets.fromLTRB(
                                                                            50,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                controller.updatePreApproveEntryStatusApi(id: snapshot.data.data[index].id!, token: controller.token, status: 2, statusdescription: 'Checkin', cnic: controller.cnicController.text, vechileno: controller.vechilenoController.text);
                                                                              },
                                                                              child: MyStatusWidget(
                                                                                width: 81,
                                                                                height: 22,
                                                                                status: 'Check In',
                                                                                color: HexColor('#26B82C'),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 13,
                                                                            ),
                                                                            GestureDetector(
                                                                              onTap: () {
                                                                                Get.back();
                                                                              },
                                                                              child: MyStatusWidget(
                                                                                width: 81,
                                                                                height: 22,
                                                                                status: 'Cancel',
                                                                                color: HexColor('#BABABA'),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 42, 14, 0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: MyStatusWidget(
                                                        width: 81,
                                                        height: 22,
                                                        status: 'Check In',
                                                        color:
                                                            HexColor('#26B82C'),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ] else if (snapshot.data
                                                      .data[index].status ==
                                                  2) ...[
                                                GestureDetector(
                                                  onTap: () {
                                                    controller
                                                        .updatePreapproveEntryCheckoutStatusApi(
                                                            id: snapshot
                                                                .data
                                                                .data[index]
                                                                .id!,
                                                            token: controller
                                                                .token,
                                                            status: 3,
                                                            statusdescription:
                                                                'Checkout');
                                                    // showDialog(
                                                    //     context:
                                                    //     context,
                                                    //     builder: (BuildContext
                                                    //     context) =>
                                                    //         AlertDialog(
                                                    //           title:
                                                    //           Column(
                                                    //             crossAxisAlignment:
                                                    //             CrossAxisAlignment.start,
                                                    //             children: [
                                                    //               Center(
                                                    //                   child: Text(
                                                    //                     'Pre Approve Entry',
                                                    //                     style: GoogleFonts.ubuntu(
                                                    //                         color: HexColor('#4D4D4D'),
                                                    //                         fontSize: 18,
                                                    //                         fontWeight: FontWeight.w700),
                                                    //                   )),
                                                    //               SizedBox(
                                                    //                 height:
                                                    //                 24,
                                                    //               ),
                                                    //               Center(
                                                    //                 child:
                                                    //                 MyTextFormField(
                                                    //                   controller: controller.cnicController,
                                                    //                   width: 173,
                                                    //                   height: 30,
                                                    //                   labelText: "CNIC",
                                                    //                   hintText: 'CNIC',
                                                    //                   onEnabledBorderColor: HexColor('#FF9900'),
                                                    //                   onFocusedBorderColor: HexColor('#FF9900'),
                                                    //                 ),
                                                    //               ),
                                                    //               SizedBox(
                                                    //                 height:
                                                    //                 14,
                                                    //               ),
                                                    //               Center(
                                                    //                 child:
                                                    //                 MyTextFormField(
                                                    //                   controller: controller.vechilenoController,
                                                    //                   width: 173,
                                                    //                   height: 30,
                                                    //                   labelText: "VEHICLE NO",
                                                    //                   hintText: 'VEHICLE NO',
                                                    //                   onEnabledBorderColor: HexColor('#FF9900'),
                                                    //                   onFocusedBorderColor: HexColor('#FF9900'),
                                                    //                 ),
                                                    //               ),
                                                    //               SizedBox(
                                                    //                 height:
                                                    //                 37,
                                                    //               ),
                                                    //               Padding(
                                                    //                 padding:  EdgeInsets.fromLTRB(50,0,0,0),
                                                    //                 child: Row(
                                                    //                   children: [
                                                    //                     GestureDetector(
                                                    //                       onTap:
                                                    //                           () {
                                                    //
                                                    //                         controller.updatePreApproveEntryStatusApi(id: snapshot.data.data[index]
                                                    //                             .id!, token: controller.token, status: 2, statusdescription: 'Checkin', cnic: controller.cnicController.text, vechileno: controller.vechilenoController.text);
                                                    //                       },
                                                    //                       child:
                                                    //                       MyStatusWidget(
                                                    //                         width: 81,
                                                    //                         height: 22,
                                                    //                         status: 'Check In',
                                                    //                         color: HexColor('#26B82C'),
                                                    //                       ),
                                                    //                     ),
                                                    //
                                                    //                     SizedBox(width: 13,),
                                                    //                     GestureDetector(
                                                    //                       onTap:
                                                    //                           () {
                                                    //                         Get.back();
                                                    //                       },
                                                    //                       child:
                                                    //                       MyStatusWidget(
                                                    //                         width: 81,
                                                    //                         height: 22,
                                                    //                         status: 'Cancel',
                                                    //                         color: HexColor('#BABABA'),
                                                    //                       ),
                                                    //                     ),
                                                    //
                                                    //                   ],
                                                    //                 ),
                                                    //               ),
                                                    //             ],
                                                    //           ),
                                                    //         ));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 42, 14, 0),
                                                    child: Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: MyStatusWidget(
                                                        width: 81,
                                                        height: 22,
                                                        status: 'Check out',
                                                        color:
                                                            HexColor('#ED0909'),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ]
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            } else if (snapshot.hasError) {
                              return Icon(Icons.error_outline);
                            } else {
                              return CircularProgressIndicator();
                            }
                          }),
                    ),
                  ],
                ),
              );
            }));
  }

  Widget MyStatusWidget(
      {required status,
      required color,
      Color? textcolor,
      double? width,
      double? height}) {
    return Container(
      width: width ?? 64,
      height: height ?? 18,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(4)),
      child: Center(
        child: Text(
          status,
          style: TextStyle(
            fontSize: 10,
            color: textcolor ?? HexColor('#FFFFFF'),
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
