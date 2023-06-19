import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';
import 'package:gatekeeper/Routes/set_routes.dart';

import 'package:get/get.dart';


class ReportToAdminScreen extends StatefulWidget {
  @override
  State<ReportToAdminScreen> createState() => _ReportToAdminScreenState();
}

class _ReportToAdminScreenState extends State<ReportToAdminScreen> {
  DateTime dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String eventstartdate = dateTime.toString().split(' ')[0];

    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Report'),
      
        backgroundColor: primaryColor,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Get.offAndToNamed(addreporttoadminscreen);
                },
                child: Icon(
                  Icons.add,
                  size: 26.0,
                ),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: ListView.builder(
              itemBuilder: (context, index) {
                return Container(
                  height: 170,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: ListTile(
                      title: Text('Report Title'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Report Description',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Report Date: ${eventstartdate}'),
                        ],
                      ),
                      trailing: Wrap(children: [
                        InkWell(
                          onTap: () {
                            // AwesomeDialog(
                            //   context: context,
                            //   dialogType: DialogType.QUESTION,
                            //   animType: AnimType.BOTTOMSLIDE,
                            //   title: 'Are You Sure',
                            //   desc:
                            //       'Are You Sure You Want To Delete This.............',
                            //   btnCancelOnPress: () {},
                            //   btnOkOnPress: () {},
                            //   btnOkText: 'Delete',
                            //   btnOkColor: primaryColor,
                            //   btnCancelColor: primaryColor,
                            // )..show();
                        
                          },
                          child: Icon(
                            Icons.delete,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        // InkWell(
                        //   onTap: () {
                        //     Get.offAndToNamed(updateeventsscreen);
                        //   },
                        //   child: Icon(
                        //     Icons.edit,
                        //     color: primaryColor,
                        //   ),
                        // ),
                      ]),
                    ),
                  ),
                );
              },
              itemCount: 5),
        ),
      ),
    );
  }
}
