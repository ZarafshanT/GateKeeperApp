import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

class ServiceProviderDetails extends StatefulWidget {
  const ServiceProviderDetails({Key? key}) : super(key: key);

  @override
  State<ServiceProviderDetails> createState() => _ServiceProviderDetailsState();
}

class _ServiceProviderDetailsState extends State<ServiceProviderDetails> {
  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      child: Padding(padding: EdgeInsets.all(8),
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
                  ),




                  //CircleAvatar


                  const SizedBox(
                    height: 10,
                  ), //SizedBox
                  Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Suleman Awan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'NE 729 Dhoke Farman Ali Chaklala Road Rawalpindi',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Phone Number',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '03365067568',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'CNIC',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '37405-7456381-5',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Role',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cook',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Experience',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '2-YEARS',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'hi ju dsj fjnbhjd',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Monthly Salary',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '10,000-PKR',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Available From',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '09:00 AM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Available Till: ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '07:00 PM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Available Week Days On: ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Monday to Sunday',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cover Houses In One Day: ',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ' 4',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(height: 10,)
                ],
              ), //Padding
            )



          ],),
      ),
    );
  }
}
