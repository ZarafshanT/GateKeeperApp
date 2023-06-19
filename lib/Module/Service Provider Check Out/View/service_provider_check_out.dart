import 'package:flutter/material.dart';
import 'package:gatekeeper/Constants/constants.dart';

import 'package:hexcolor/hexcolor.dart';

import '../../Service Provider Check In/View/service_provider_details.dart';
class ServiceProviderCheckOut extends StatefulWidget {
  const ServiceProviderCheckOut({Key? key}) : super(key: key);

  @override
  State<ServiceProviderCheckOut> createState() => _ServiceProviderCheckOutState();
}

class _ServiceProviderCheckOutState extends State<ServiceProviderCheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Service Provider Check Out"),backgroundColor: primaryColor,


        ),
        body:    Padding(
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
                            content: ServiceProviderDetails()
                        ),
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
                                        backgroundImage: AssetImage('assets/k.webp'),
                                        //NetworkImage
                                        radius: 30,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10),
                                        child: Text(
                                          'Suleman Awan',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                        const EdgeInsets.only(bottom: 10),
                                        child: Column(children: [
Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    Text("Check Out Time")
    ,Text("Date",textAlign:TextAlign.start ,)],)
  ,
  Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [Text("4:00 PM"),Text("21-08-2022",textAlign: TextAlign.start,)],),
]),],),

                                      ),
                                      Container(width: MediaQuery.of(context).size.width,
                                        child: ElevatedButton(onPressed: (){},child: Text("Checkout"),)


                                      )


                                    ],
                                  ),
                                ), //Text

                              ])),
                    ));
              },
              itemCount: 5,
            ),
          ),
        )


    );
  }
}
