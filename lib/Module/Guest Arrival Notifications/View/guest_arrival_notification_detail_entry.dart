import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Constants/constants.dart';

class GuestArrivalNotificationDetailEntry extends StatefulWidget {
  const GuestArrivalNotificationDetailEntry({Key? key}) : super(key: key);

  @override
  State<GuestArrivalNotificationDetailEntry> createState() =>
      _GuestArrivalNotificationDetailEntryState();
}

class _GuestArrivalNotificationDetailEntryState
    extends State<GuestArrivalNotificationDetailEntry> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text("Guest Arrival Detail/Entry "),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )),
              child:Padding(padding: EdgeInsets.all(10),
                child: Column(children: [

                  Row(children: [   GestureDetector(onTap: (){
                    Get.back();


                  },
                    child: Container(
                      child: Icon(Icons.arrow_back_outlined),
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),],),
                    SizedBox(height: 10,),
                  Row(
                    children: [

                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.person),
                      ),
                      Padding(padding: EdgeInsets.all(10),
                        child: Text(
                          "Guest Arrival Entry Detail",
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),],),
              )



            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Guest Name",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Suleman Awan",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Guest Description",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "lorems jdjndnd jdjdjjd kidjdjfdju oodododo odododoododh odododo djjdjdjdj",
                      style: TextStyle(fontSize: 16),
                    ),
                    Divider(),
                    Text(
                      "Vehicle No",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "RWP-2034",
                      style: TextStyle(fontSize: 16),
                    ),
                    Divider(),
                    Text(
                      "Date",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "06-08-2022",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Check In Time",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "5:00 Pm",
                      style: TextStyle(fontSize: 16),
                    ),
                    Divider(),
                    // Center(
                    //   child: ElevatedButton(
                    //       style: ElevatedButton.styleFrom(
                    //           primary: primaryColor, shape: StadiumBorder()),
                    //       onPressed: () {
                    //
                    //
                    //
                    //       },
                    //       child: Text(
                    //         "Add Guest Details",
                    //         style: TextStyle(fontSize: 16),
                    //       )),
                    // )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
