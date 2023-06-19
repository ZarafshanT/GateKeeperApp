import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;

import '../../../Constants/api_routes.dart';

import '../../../Routes/set_routes.dart';
import '../../Login/Model/User.dart';
import '../Model/Resident.dart';
import '../View/add_vistor_detail_screen.dart';

class AddVistorDetailController extends GetxController {
  final formKey = new GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController cnicController = TextEditingController();
  TextEditingController mobileNoController = TextEditingController();
  TextEditingController addressController = TextEditingController();

  TextEditingController vehicleNoController = TextEditingController();

  TextEditingController searchAddressController = TextEditingController();
  List<String> searchedAddressList = [];

  File? imageFile;

  TextEditingController guestVehicleNo = TextEditingController();

  DateTime currentDateTime = DateTime.now();
  String? currentDate;
  String? currentTime;

  var data = Get.arguments;
  late final User userdata;
  //late final Residents resident;

  String? gateKeeperDropDownValue;
  String? visitorTypeDropDownValue = 'Guest';
  String? visitingTypeDropDownValue = 'House/Apartment Visit';

  //List<GateKeeper> gateKeeperList = [];
  List<String> visitorTypesList = ['Guest', 'Delivery', 'Cab', 'Visiting Help'];
  List<String> visitingTypesList = ['House/Apartment Visit', 'Society Visit'];

  bool isData = false;
  bool isGateKeeper = false;
  bool isVisitorType = false;
  Resident? resident;
  List<Resident> li = [];

  setVisitingType(value) {
    visitingTypeDropDownValue = value;
    update();
  }

  setVisitorType(value) {
    visitorTypeDropDownValue = value;
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    userdata = data;

    getResident(userdata.subadminid!, userdata.bearerToken!);
  }

  final focus = FocusNode();

  Future<List<Resident>> getResident(int subadminid, String token) async {
    final response = await Http.get(
      Uri.parse(Api.searchResident + "/" + subadminid.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
    );

    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      print(data);
      li = await (data['data'] as List)
          .map(
            (e) => Resident(
                id: e['id'],
                houseaddress: e['houseaddress'],
                residentid: e['residentid']),
          )
          .toList();
      li;

      //List<Resident> list = parseAgents(response.body);
      return li;
    } else {
      throw Exception('Error');
    }
  }

  Future addVistorDetailApi({
    required String token,
    required int gatekeeperid,
    required int societyid,
    required int subadminid,
    String? houseaddress,
    required String visitortype,
    required String name,
    required String cnic,
    required String mobileno,
    required String vechileno,
    required String arrivaldate,
    required String arrivaltime,
  }) async {
    final response = await Http.post(
      Uri.parse(Api.addvistordetail),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
      body: jsonEncode(<String, dynamic>{
        "gatekeeperid": gatekeeperid,
        "societyid": societyid,
        "subadminid": subadminid,
        "houseaddress": houseaddress,
        "visitortype": visitortype,
        "name": name,
        "cnic": cnic,
        "mobileno": mobileno,
        "vechileno": vechileno,
        "arrivaldate": arrivaldate,
        "arrivaltime": arrivaltime,
        "checkoutdate": arrivaldate,
        "checkouttime": arrivaltime,
        
        "status": 0,
        "statusdescription": "checkin",
      }),
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);

      Get.offAndToNamed(vistorDetailScreen, arguments: userdata);

      Get.snackbar(" Add Vistor Detail Successfully", "");
    } else {
      Get.snackbar("Failed to Add Vistor Detail", "");
    }
  }

}
