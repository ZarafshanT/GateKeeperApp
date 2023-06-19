import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gatekeeper/Module/HomeScreen/Controller/home_screen_controller.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:gatekeeper/Widgets/My%20TextForm%20Field/my_textform_field.dart';

import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import '../../../Routes/set_routes.dart';
import '../../../Services/Shared Preferences/MySharedPreferences.dart';
import '../../../Widgets/HomeScreen Card/homeScreen_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/ReusableTextWidget/custom_text.dart';
import '../../../Widgets/ReusableTextWidget/textstyle.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) => SafeArea(
          child: Scaffold(
        // drawer: Drawer(
        //   child: ListView(
        //     padding: EdgeInsets.zero,
        //     children: [
        //       const DrawerHeader(
        //         child: Text('Society User'),
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.event,
        //         ),
        //         title: const Text('Society Events'),
        //         onTap: () {
        //           Get.toNamed(societyEvents);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.how_to_reg,
        //         ),
        //         title: const Text('Pre Approved Guests'),
        //         onTap: () {
        //           Get.toNamed(preApprovedGuests);
        //         },
        //       ),
        //       ListTile(
        //         leading: Icon(
        //           Icons.logout,
        //         ),
        //         title: const Text('Logout'),
        //         onTap: () {
        //           MySharedPreferences.deleteUserData();
        //           Get.offAllNamed(loginscreen);

        //         },
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: 463.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/home.jpeg',
                      ),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 13.w, top: 78.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/drawer.svg',
                              width: 18.w,
                              height: 12.h,
                            ),
                          ),
                          ReusableText(
                              text: 'Home',
                              style: txtStyle(16, Colors.white, FontWeight.w500,
                                  FontStyle.normal)),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(preApproveEntryNotificationonScreen,
                                  arguments: controller.user);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(right: 1.41.w),
                              child: SvgPicture.asset(
                                'assets/notification.svg',
                                width: 12.19.w,
                                height: 15.41.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.sbh,
                    ReusableText(
                        text: 'Search Your Services',
                        style: txtStyle(19, Colors.white, FontWeight.w500,
                            FontStyle.normal)),
                    13.sbh,
                    ReusableText(
                        text: 'Please enter services you want',
                        style: txtStyle(12, HexColor('#FFD2D2'),
                            FontWeight.w400, FontStyle.normal)),
                    9.sbh,
                    MyTextFormField(
                      borderRadius: 15.r,
                      fillColor: Color(0xffFFFFFF),
                      fill: true,
                      hintText: 'Search',
                      contentPadding: EdgeInsets.only(
                        left: 28.w,
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/arrow.svg',
                            width: 19.36.w,
                          ),
                        ),
                      ),
                    ),
                    14.sbh,
                    Center(
                      child: SvgPicture.asset(
                        'assets/building.svg',
                        width: 198.w,
                        height: 182.98.h,
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(top: 441.h),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.r),
                        topRight: Radius.circular(16.r))),
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 15.h,
                    top: 30.h,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 25.w,
                        ),
                        child: Row(
                          children: [
                            ReusableText(
                                text: 'Our Services',
                                style: txtStyle(15, HexColor('#666592'),
                                    FontWeight.w700, FontStyle.normal)),
                            Padding(
                              padding: EdgeInsets.only(left: 154.w),
                              child: ReusableText(
                                  text: 'View All',
                                  style: txtStyle(13, HexColor('#8584A5'),
                                      FontWeight.w500, FontStyle.normal)),
                            ),
                            8.sbw,
                            SvgPicture.asset(
                              'assets/arrow.svg',
                              width: 18.w,
                            ),
                          ],
                        ),
                      ),
                      4.sbh,
                      Homecards(
                        onTap: () {
                          Get.toNamed(preApproveEntryResidents,
                              arguments: controller.user);
                        },
                        heading: 'Pre Approve Entry',
                        description: 'You can pre approve your visitor',
                        iconPath: 'assets/team.svg',
                      ),
                      Homecards(
                          onTap: () {
                            Get.toNamed(eventsscreen,
                                arguments: controller.user);
                          },
                          heading: 'Events',
                          description: 'You Can View Events',
                          iconPath: ''),
                      Homecards(
                        heading: 'Notice Board',
                        description: 'Announcements From Admin',
                        onTap: () {
                          Get.toNamed(noticeboardscreen,
                              arguments: controller.user);
                        },
                        iconPath: 'assets/post-it.svg',
                      ),
                      Homecards(
                        heading: 'Chat',
                        description: 'Chat with Residents/Guards',
                        onTap: () {
                          Get.toNamed(chatavailbilityscreen,
                              arguments: controller.user);
                        },
                        iconPath: '',
                      ),
                      Homecards(
                        heading: 'Visitor',
                        description: 'Vistors Detail',
                        onTap: () {
                          Get.offNamed(vistorDetailScreen,
                              arguments: controller.user);
                        },
                        iconPath: '',
                      ),
                      Homecards(
                        heading: 'Residential Emergency',
                        description: 'Residential Emergency',
                        onTap: () {
                          Get.offNamed(residentialEmergencyScreen,
                              arguments: controller.user);
                        },
                        iconPath: '',
                      ),
                      Homecards(
                        heading: 'Logout',
                        description: 'Logout YourSelf',
                        onTap: () {
                          MySharedPreferences.deleteUserData();
                          Get.offAllNamed(loginscreen);
                        },
                        iconPath: '',
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      )),
    );
  }
}
