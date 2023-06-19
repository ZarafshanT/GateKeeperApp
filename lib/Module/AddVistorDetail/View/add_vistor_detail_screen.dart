import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gatekeeper/Widgets/Extensions/sizedBox_ext.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/custom_text.dart';
import 'package:gatekeeper/Widgets/ReusableTextWidget/textstyle.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:searchfield/searchfield.dart';
import '../../../Constants/constants.dart';
import '../../../Widgets/My Back Button/my_back_button.dart';
import '../../../Widgets/My Button/my_button.dart';
import '../../../Widgets/My TextForm Field/my_textform_field.dart';
import '../Controller/add_vistor_detail_controller.dart';

class AddVistorDetailScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<AddVistorDetailController>(
            init: AddVistorDetailController(),
            builder: (controller) {
              return Form(
                key: controller.formKey,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                    ),
                    child: Column(
                      children: <Widget>[
                        MyBackButton(
                          text: 'Add Vistor Detail',
                          onTap: () {
                            Get.back();
                          },
                        ),
                        32.sbh,
                        Align(
                            alignment: Alignment.centerLeft,
                            child: ReusableText(
                                text: "Visiting Type",
                                style: txtStyle(14, HexColor('#4D4D4D'),
                                    FontWeight.w500, FontStyle.normal))),
                        Container(
                          margin: EdgeInsets.only(top: 15.h, bottom: 12.h),
                          width: 343.w,
                          padding: EdgeInsets.only(right: 12.w),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.r),
                              border: Border.all(
                                color: HexColor('#E1E1E1'),
                              )),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              style: GoogleFonts.ubuntu(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: HexColor('#666592')),
                              value: controller.visitingTypeDropDownValue,
                              isExpanded: true,
                              borderRadius: BorderRadius.circular(12.r),
                              icon: Icon(
                                Icons.arrow_drop_down_sharp,
                                color: primaryColor,
                              ),
                              items: controller.visitingTypesList.map((items) {
                                return DropdownMenuItem(
                                  value: items..toString(),
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 12.w),
                                    child: Row(
                                      children: [Text(items.toString())],
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                controller.setVisitingType(newValue);
                              },
                            ),
                          ),
                        ),
                        (controller.visitingTypeDropDownValue ==
                                'Society Visit')
                            ? Padding(
                                padding: EdgeInsets.only(top: 20.w),
                                child: Column(
                                  children: [
                                    MyTextFormField(
                                      controller: controller.nameController,
                                      validator: emptyStringValidator,
                                      hintText: 'Name',
                                      hintstyle: txtStyle(
                                          16,
                                          HexColor('#929292'),
                                          FontWeight.w400,
                                          FontStyle.normal),
                                    ),
                                    15.sbh,
                                    MyTextFormField(
                                      controller: controller.cnicController,
                                      validator: emptyStringValidator,
                                      hintText: 'Cnic',
                                      textInputType: TextInputType.number,
                                      hintstyle: txtStyle(
                                          16,
                                          HexColor('#929292'),
                                          FontWeight.w400,
                                          FontStyle.normal),
                                    ),
                                    15.sbh,
                                    MyTextFormField(
                                      controller: controller.mobileNoController,
                                      validator: emptyStringValidator,
                                      hintText: 'Mobile Number',
                                      textInputType: TextInputType.number,
                                      hintstyle: txtStyle(
                                          16,
                                          HexColor('#929292'),
                                          FontWeight.w400,
                                          FontStyle.normal),
                                    ),
                                    15.sbh,
                                    MyTextFormField(
                                      controller:
                                          controller.vehicleNoController,
                                      validator: emptyStringValidator,
                                      hintText: 'Vehicle Number',
                                      hintstyle: txtStyle(
                                          16,
                                          HexColor('#929292'),
                                          FontWeight.w400,
                                          FontStyle.normal),
                                    ),
                                  ],
                                ),
                              )
                            : Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: ReusableText(
                                          text: "Visitor Type",
                                          style: txtStyle(
                                              14,
                                              HexColor('#4D4D4D'),
                                              FontWeight.w500,
                                              FontStyle.normal))),
                                  Container(
                                    margin: EdgeInsets.only(
                                        top: 15.h, bottom: 12.h),
                                    padding: EdgeInsets.only(right: 12.w),
                                    width: 343.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        border: Border.all(
                                          color: HexColor('#E1E1E1'),
                                        )),
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton(
                                        style: GoogleFonts.ubuntu(
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.sp,
                                            color: HexColor('#666592')),
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        value:
                                            controller.visitorTypeDropDownValue,
                                        isExpanded: true,
                                        icon: Icon(
                                          Icons.arrow_drop_down_sharp,
                                          color: primaryColor,
                                        ),
                                        items: controller.visitorTypesList
                                            .map((items) {
                                          return DropdownMenuItem(
                                            value: items..toString(),
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 12.w,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Text(items.toString())
                                                  ],
                                                )),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          controller.setVisitorType(newValue);
                                        },
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: ReusableText(
                                        text: "Search Your Resident",
                                        style: txtStyle(14, HexColor('#4D4D4D'),
                                            FontWeight.w500, FontStyle.normal)),
                                  ),
                                  10.sbh,
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            blurRadius: 5,
                                          )
                                        ]),
                                    child: SearchField(
                                      searchInputDecoration: InputDecoration(
                                          enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: HexColor('#E1E1E1'),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.r)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.blue
                                                      .withOpacity(0.8),
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(12.r))),
                                      autoCorrect: true,
                                      validator: (x) {
                                        if (controller.li.contains(x) ||
                                            x!.isEmpty) {
                                          return 'Please Enter a valid Address';
                                        }
                                        return null;
                                      },
                                      onSearchTextChanged: (query) {
                                        final filter = controller.li
                                            .where((element) => element
                                                .houseaddress
                                                .toLowerCase()
                                                .contains(query.toLowerCase()))
                                            .toList();
                                        return filter
                                            .map((e) =>
                                                SearchFieldListItem<String>(
                                                    e.houseaddress))
                                            .toList();
                                      },
                                      key: const Key('searchfield'),
                                      hint: 'Search by House Address',
                                      suggestions: controller.li
                                          .map((e) =>
                                              SearchFieldListItem<String>(
                                                  e.houseaddress))
                                          .toList(),
                                      focusNode: controller.focus,
                                      suggestionState: Suggestion.expand,
                                      onSuggestionTap:
                                          (SearchFieldListItem<String> x) {
                                        controller.focus.unfocus();
                                      },
                                      controller:
                                          controller.searchAddressController,
                                    ),
                                  ),
                                  20.sbh,
                                  MyTextFormField(
                                    controller: controller.nameController,
                                    hintText: 'Name',
                                    validator: emptyStringValidator,
                                    textInputType: TextInputType.number,
                                    hintstyle: txtStyle(16, HexColor('#929292'),
                                        FontWeight.w400, FontStyle.normal),
                                  ),
                                  15.sbh,
                                  MyTextFormField(
                                    controller: controller.cnicController,
                                    hintText: 'Cnic',
                                    validator: emptyStringValidator,
                                    textInputType: TextInputType.number,
                                    hintstyle: txtStyle(16, HexColor('#929292'),
                                        FontWeight.w400, FontStyle.normal),
                                  ),
                                  15.sbh,
                                  MyTextFormField(
                                    controller: controller.mobileNoController,
                                    validator: emptyStringValidator,
                                    hintText: 'Mobile Number',
                                    hintstyle: txtStyle(16, HexColor('#929292'),
                                        FontWeight.w400, FontStyle.normal),
                                    textInputType: TextInputType.number,
                                  ),
                                  15.sbh,
                                  MyTextFormField(
                                    controller: controller.vehicleNoController,
                                    validator: emptyStringValidator,
                                    hintText: 'Vehicle Number',
                                    hintstyle: txtStyle(16, HexColor('#929292'),
                                        FontWeight.w400, FontStyle.normal),
                                  ),
                                ],
                              ),
                        20.sbh,
                        MyButton(
                            height: 48.h,
                            width: 343.w,
                            text: 'Check-In',
                            mystyle: btntextStyle(17, HexColor('#FFFFFF'),
                                FontWeight.w500, FontStyle.normal),
                            onPressed: () {
                              if (controller.formKey.currentState!.validate()) {
                                if (controller.visitingTypeDropDownValue ==
                                    'Society Visit') {
                                  controller.currentDate = controller
                                          .currentDateTime.year
                                          .toString() +
                                      "-" +
                                      controller.currentDateTime.month
                                          .toString() +
                                      "-" +
                                      controller.currentDateTime.day.toString();

                                  controller.currentTime = controller
                                          .currentDateTime.hour
                                          .toString() +
                                      ":" +
                                      controller.currentDateTime.minute
                                          .toString() +
                                      ":" +
                                      controller.currentDateTime.second
                                          .toString();

                                  controller.addVistorDetailApi(
                                      societyid: controller.userdata.societyid!,
                                      subadminid:
                                          controller.userdata.subadminid!,
                                      token: controller.userdata.bearerToken!,
                                      cnic: controller.cnicController.text,
                                      name: controller.nameController.text,
                                      mobileno:
                                          controller.mobileNoController.text,
                                      houseaddress: 'Society Vistor',
                                      arrivaldate: controller.currentDate!,
                                      arrivaltime: controller.currentTime!,
                                      vechileno:
                                          controller.vehicleNoController.text,
                                      visitortype: 'Society Vistor',
                                      gatekeeperid:
                                          controller.userdata.userid!);
                                } else {
                                  controller.currentDate = controller
                                          .currentDateTime.year
                                          .toString() +
                                      "-" +
                                      controller.currentDateTime.month
                                          .toString() +
                                      "-" +
                                      controller.currentDateTime.day.toString();

                                  controller.currentTime = controller
                                          .currentDateTime.hour
                                          .toString() +
                                      ":" +
                                      controller.currentDateTime.minute
                                          .toString() +
                                      ":" +
                                      controller.currentDateTime.second
                                          .toString();

                                  controller.addVistorDetailApi(
                                      societyid: controller.userdata.societyid!,
                                      subadminid:
                                          controller.userdata.subadminid!,
                                      token: controller.userdata.bearerToken!,
                                      cnic: controller.cnicController.text,
                                      name: controller.nameController.text,
                                      mobileno:
                                          controller.mobileNoController.text,
                                      houseaddress: controller
                                          .searchAddressController.text,
                                      arrivaldate: controller.currentDate!,
                                      arrivaltime: controller.currentTime!,
                                      vechileno:
                                          controller.vehicleNoController.text,
                                      visitortype:
                                          controller.visitorTypeDropDownValue!,
                                      gatekeeperid:
                                          controller.userdata.userid!);
                                }
                              }
                            }),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
