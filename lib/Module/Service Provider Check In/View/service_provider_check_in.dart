

import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Module/Service%20Provider%20Check%20In/View/service_provider_details.dart';
import 'package:gatekeeper/Module/Service%20Provider%20Check%20In/View/show_dialog.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:hexcolor/hexcolor.dart';

class ServiceProviderCheckIn extends StatefulWidget {
  const ServiceProviderCheckIn({Key? key}) : super(key: key);

  @override
  State<ServiceProviderCheckIn> createState() => _ServiceProviderCheckInState();
}

class _ServiceProviderCheckInState extends State<ServiceProviderCheckIn> {
  bool _isSearch = false;
  List<Map> availableHobbies = [
    {
      "username": "Suleman Awan",
      "time": "4:00 pm",
      "date": "21-08-1998",

    },
    {
      "name": "Society B House 112",
      "username": "Ali Awan",
      "time": "4:00 pm",
      "date": "21-08-1998",


    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  _isSearch = true;
                  setState(() {});
                },
                icon: Icon(Icons.search))
          ],
          title: _isSearch
              ? TextField(
                  decoration: InputDecoration(
                      hintText: 'Service Provider Search',
                      hintStyle: TextStyle(color: Colors.white)),
                )
              : Text("Service Provider Check IN"),
          backgroundColor: primaryColor,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32.0))),
                            contentPadding: EdgeInsets.only(top: 10.0),
                            title: Text("Service Provider Details"),
                            content: ServiceProviderDetails()),
                      );
                    },
                    child: Container(
                      width: 400,
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 5,
                          shadowColor: Colors.black,
                          color: HexColor("#FFFBE8"),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/k.webp'),
                                        //NetworkImage
                                        radius: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          availableHobbies[index]['username'],
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text("Check IN Time"),
                                                      Text(
                                                        "Date",
                                                        textAlign:
                                                            TextAlign.start,
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        availableHobbies[index]
                                                            ["time"],
                                                      ),
                                                      Text(
                                                        availableHobbies[index]
                                                            ["date"],
                                                        textAlign:
                                                            TextAlign.start,
                                                      )
                                                    ],
                                                  ),
                                                ]),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: ElevatedButton(
                                            child: Text("Check In"),
                                            onPressed: () {
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return StatefulBuilder(
                                                        builder: (context,
                                                            setState) {
                                                      return AlertDialog(
                                                          actions: [
                                                            ElevatedButton(
                                                              style: ElevatedButton.styleFrom(
                                                                  backgroundColor:
                                                                      primaryColor,
                                                                  fixedSize:
                                                                      Size(100,
                                                                          40),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20))),
                                                              onPressed: () {
                                                                Get.back();
                                                              },
                                                              child: const Text(
                                                                'Save',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold),
                                                              ),
                                                            ),
                                                          ],
                                                          content: DialogWidget(

                                                          ));
                                                    });
                                                  });
                                            },
                                          ))
                                    ],
                                  ),
                                ), //Text
                              ])),
                    ));
              },
              itemCount: availableHobbies.length,
            ),
          ),
        ));
  }
}
