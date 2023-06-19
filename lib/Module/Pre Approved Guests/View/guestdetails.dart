import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

class GuestDetails extends StatefulWidget {

  const GuestDetails({Key? key}) : super(key: key);
  @override
  State<GuestDetails> createState() => _GuestDetailsState();
}
class _GuestDetailsState extends State<GuestDetails> {
  @override
  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
        child: Column(
          children: [


        SizedBox(
          width: 400,

          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 40,
                  child: const CircleAvatar(
                    backgroundImage:AssetImage("assets/k.webp"), //NetworkImage
                    radius: 37,
                  ), //CircleAvatar
                ),
              ), //CircleAvatar
              const SizedBox(
                height: 10,
              ), //SizedBox
              Center(
                child: Text(

                  'Suleman Awan',
                  style: TextStyle(
                    fontSize: 20,
                    color:primaryColor,
                    fontWeight: FontWeight.w500,
                  ), //Textstyle
                ),
              ),
              ExpansionTile(
                title: Text('Details'),
                children: <Widget>[
                  ListTile(title:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [

                    Text("User Name",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Suleman Awan"),
                    Text("User Cnic",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("37405-76777637-1"),
                    Text("User Address",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("NE 728 Dhoke Farman ALi"),

                    Text("User Vehcile No",style: TextStyle(fontWeight: FontWeight.bold),),
                    Text("Rwp-1239",),],)),
                ],
              ),

              const SizedBox(
                height: 10,
              ), //SizedBox
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Guest Name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Fuzail Raza',
                  style: TextStyle(
                    fontSize: 15,



                  ), //Textstyle
                ),
              ),


              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Vechile Number',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'RWP-2034',
                  style: TextStyle(
                    fontSize: 15,



                  ), //Textstyle
                ),
              ),

Divider(),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'CNIC',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  '37405-767767-1',
                  style: TextStyle(
                    fontSize: 15,



                  ), //Textstyle
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Mobile Number',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  '0321 5550979',
                  style: TextStyle(
                    fontSize: 15,




                  ), //Textstyle
                ),
              ),
              Divider(),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Check In Time',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  '4:00pm',
                  style: TextStyle(
                    fontSize: 15,
                  ), //Textstyle
                ),
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Check Out Time',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  '10:00 PM',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.green
                  ), //Textstyle
                ),
              ),
              Divider(),Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  'Date',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold


                  ), //Textstyle
                ),
              ), //Text
              Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                child: const Text(
                  '10-08-2022',
                  style: TextStyle(
                    fontSize: 15,



                  ), //Textstyle
                ),
              ),
              // Padding(padding: EdgeInsets.all(10),
              //   child: Container(width: MediaQuery.of(context).size.width,
              //     child: ElevatedButton(onPressed: (){
              //       Get.back();
              //
              //
              //     }, child: Text("Check Out",style: TextStyle(),),
              //       style: ElevatedButton.styleFrom(shape: StadiumBorder(),primary: Colors.green),
              //
              //     ),
              //   ),
              // )
              //Text
              //Text
              //SizedBox
            ],
          ), //Padding
        )



    ],),
      );
  }
}
