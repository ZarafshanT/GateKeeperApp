import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Routes/set_routes.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WalkinGuests extends StatefulWidget {
  const WalkinGuests({Key? key}) : super(key: key);

  @override
  State<WalkinGuests> createState() => _WalkinGuestsState();
}

class _WalkinGuestsState extends State<WalkinGuests> {
  final PageController _controller = PageController(initialPage: 0);
  bool     isChecked=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text(
              "Walkin Guests",
            ),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person_add), text: "Add Guest"),
                Tab(icon: Icon(Icons.pending), text: "Pending Requests"),
                Tab(icon: Icon(Icons.exit_to_app), text: "CheckOut"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: SizedBox(
                      width: 400,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Colors.white60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/kk.webp'),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Suleman",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ne 728 Dhoke Farman Ali",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    Get.toNamed(chatscreen);
                                  },
                                  icon: Icon(
                                    Icons.chat,
                                    color: primaryColor,
                                  ),
                                  label: Text(
                                    "chat",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Center(
                                child: ElevatedButton(
                              onPressed: () {
                                Get.toNamed(addWalkInGuestsDetail);
                              },
                              child: Text("Add"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 30),
                                  backgroundColor: Colors.green),
                            ))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
              SingleChildScrollView(
                  child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: SizedBox(
                      width: 400,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Colors.white60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/kk.webp'),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Suleman",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ne 728 Dhoke Farman Ali",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                                TextButton.icon(
                                  onPressed: () {
                                    Get.toNamed(chatscreen);
                                  },
                                  icon: Icon(
                                    Icons.chat,
                                    color: primaryColor,
                                  ),
                                  label: Text(
                                    "chat",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Center(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Pending"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 30),
                                  backgroundColor: Colors.orange),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(9),
                    child: SizedBox(
                      width: 400,
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        color: Colors.white60,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage('assets/kk.webp'),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Suleman",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Ne 728 Dhoke Farman Ali",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    )
                                  ],
                                ),
                                TextButton.icon(
                                  onPressed: () {

                                    Get.toNamed(chatscreen);
                                  },
                                  icon: Icon(
                                    Icons.chat,
                                    color: primaryColor,
                                  ),
                                  label: Text(
                                    "chat",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Center(
                                child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Rejected"),
                              style: ElevatedButton.styleFrom(
                                  minimumSize: Size(100, 30),
                                  backgroundColor:Colors.red),
                            ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          isChecked?   Center(
            child: Container(
              width: 200,
              child: Column(
                children: [
                  Image.asset(
                    'assets/taskcompleted.png',
                    width: 100,
                  ),
                  Text(
                    "Guest Checkout Successfully",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  )
                ],
              ),
            ),
          ):
          SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Colors.white60,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/kk.webp'),
                        ),
                        Text(
                          "Suleman",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Ne 728 Dhoke Farman Ali",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: [
                            Text(
                              'Status',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Approved',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                )),
                          ],
                        ),
                        Container(
                          width: 400,
                          child: ElevatedButton(
                            onPressed: () {

                              // AwesomeDialog(
                              //   context: context,
                              //   dialogType: DialogType.QUESTION,
                              //   animType: AnimType.BOTTOMSLIDE,
                              //   title: 'Are You Sure',
                              //   desc:
                              //   'Are You Sure You Want To CheckOut.............',
                              //   btnCancelOnPress: () {},
                              //   btnOkOnPress: () {
                              //     isChecked = true;
                              //     setState(() {});
                              //   },
                              //   btnOkText: 'Yes',
                              //   btnOkColor: primaryColor,
                              //   btnCancelColor: primaryColor,
                              // )..show();

                            },
                            child: Text("Check out"),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(100, 30),
                                backgroundColor: Colors.green),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        ));
  }
}
