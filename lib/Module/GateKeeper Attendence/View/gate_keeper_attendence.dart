import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

class GateKeeperAttendence extends StatefulWidget {
  const GateKeeperAttendence({Key? key}) : super(key: key);

  @override
  State<GateKeeperAttendence> createState() => _GateKeeperAttendenceState();
}

class _GateKeeperAttendenceState extends State<GateKeeperAttendence> {
  bool isChecked = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: Text("GateKeeper Attendence"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 400,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      backgroundColor: primaryColor,
                      radius: 40,
                      child: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/k.webp"), //NetworkImage
                        radius: 37,
                      ), //CircleAvatar
                    ),
                  ), //CircleAvatar
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Center(
                    child: Text(
                      'Fuzail Raza',
                      style: TextStyle(
                        fontSize: 20,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ), //Textstyle
                    ),
                  ), //Text
                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      'GateKeeper Name',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold), //Textstyle
                    ),
                  ), //Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      'Fuzail Raza',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),

                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      'CNIC',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold), //Textstyle
                    ),
                  ), //Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '37405-767767-1',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      'Mobile Number',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold), //Textstyle
                    ),
                  ), //Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '0321 5550979',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: const Text(
                          'Check In Time',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold), //Textstyle
                        ),
                      ),
                    ],
                  ),

                  //Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '4:00pm',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: const Text(
                          'Check Out Time',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold), //Textstyle
                        ),
                      ), //Te2
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '10:00 PM',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      'Date',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold), //Textstyle
                    ),
                  ), //Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '10-08-2022',
                      style: TextStyle(
                        fontSize: 15,
                      ), //Textstyle
                    ),
                  ),
                  isChecked2
                      ?
                  Center(
                          child: Container(
                            width: 200,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/taskcompleted.png',
                                  width: 100,
                                ),
                                Text(
                                  "Your Today Attendence Completed",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                        )
                      : isChecked
                          ? Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // AwesomeDialog(
                                    //   context: context,
                                    //   dialogType: DialogType.QUESTION,
                                    //   animType: AnimType.BOTTOMSLIDE,
                                    //   title: 'Are You Sure',
                                    //   desc:
                                    //       'Are You Sure You Want To CheckOut.............',
                                    //   btnCancelOnPress: () {},
                                    //   btnOkOnPress: () {
                                    //     isChecked2 = true;
                                    //     setState(() {});
                                    //   },
                                    //   btnOkText: 'Yes',
                                    //   btnOkColor: primaryColor,
                                    //   btnCancelColor: primaryColor,
                                    // )..show();
                                    // setState(() {});
                               
                                  },
                                  child: Text(
                                    "Check Out",
                                    style: TextStyle(),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      primary: Colors.green),
                                ),
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                  onPressed: () {
                                    isChecked = true;
                                    setState(() {});
                                  },
                                  child: Text(
                                    "Check In",
                                    style: TextStyle(),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                      shape: StadiumBorder(),

                                     backgroundColor: Colors.green),
                                ),
                              ),
                            )
                  //Text
                  //Text
                  //SizedBox
                ],
              ), //Padding
            )
          ],
        ),
      ),
    );
  }
}
