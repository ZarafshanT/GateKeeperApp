import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

import 'package:get/get.dart';

import '../../../Routes/set_routes.dart';
import '../../../Widgets/image_show.dart';

class GuestArrivalNotifications extends StatefulWidget {
  const GuestArrivalNotifications({Key? key}) : super(key: key);

  @override
  State<GuestArrivalNotifications> createState() => _GuestArrivalNotificationsState();
}

class _GuestArrivalNotificationsState extends State<GuestArrivalNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Guest Arrival Notifications"),backgroundColor: primaryColor,),
      body: SingleChildScrollView(
        child: Column(
          children: [

          GestureDetector(onTap: (){

            Get.toNamed(guestArrivalNotificationEntryScreen );



          },
            child: SizedBox(width: 400,
              child: Card(

                shadowColor: Colors.black,
                child: ListTile(leading:CircleAvatar(backgroundImage: AssetImage("assets/k.webp"),
              radius: 30,)  ,
                  trailing:Wrap(
                    children: [ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: (){

                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(32.0))),
                              contentPadding: EdgeInsets.only(top: 10.0),
                              title: Text("Guest Arrival Detail Entry"),
                              content: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(

                                      children: [
                                        Padding(padding:EdgeInsets.all(10.0),
                                            child: TextFormField(decoration: InputDecoration(label: Text("Cnic")),)),
                                        Padding(padding:EdgeInsets.all(10.0),
                                            child: TextFormField(decoration: InputDecoration(label: Text("Mobile NO")),)),
                                        Padding(padding:EdgeInsets.all(10.0),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [Text("Check IN Time"),Text("4:30 pm")],),
                                        ),
                                        Container(width: 100,
                                          child: ElevatedButton(onPressed: (){
                                            Get.back();


                                          }, child: Text("Save",style: TextStyle(),),
                                            style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary: Colors.green),

                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          );


                        }, child: Text("Accept"))],
                  ),
                  title: Wrap(children: [Text("Suleman Awan",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Sent you a Guest Request")


                  ],),


                ),
              ),
            ),
          ),
          GestureDetector(onTap: (){

            Get.toNamed(guestArrivalNotificationEntryScreen );



          },
            child: SizedBox(width: 400,
              child: Card(

                shadowColor: Colors.black,
                child: ListTile(leading:InkWell(onTap: (){

                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewImage(tag: 'image1', img: 'assets/kk.webp')));


                },
                  child: Hero(tag: 'image1',
                    child: CircleAvatar(backgroundImage:
                    AssetImage(
                        "assets/kk.webp"),
              radius: 30,),
                  ),
                )  ,
                  trailing:Wrap(
                    children: [ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green),
                        onPressed: (){



                        }, child: Text("Accept"))],
                  ),
                  title: Wrap(children: [Text("Muhammad Fuzail Raza ",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Sent you a Guest Request")


                  ],),


                ),
              ),
            ),
          ),

          ],
        ),
      )




    );
  }
}
