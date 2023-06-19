import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as Http;

import '../../../Constants/api_routes.dart';
import '../../Pre Approve Entry Notifications/Model/PreApproveEntry.dart';
class PreApproveEntries extends GetxController
{

  final cnicController = TextEditingController();
  final vechilenoController = TextEditingController();
  late final PreApproveEntry preApproveEntry;
  var data=Get.arguments[0];
  var token=Get.arguments[1];


  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    print("init");
    print(data.userid);


  }

  preApproveEntriesApi(int userid, String token) async {
    print(userid);
    print("token $token");

    final response = await Http.get(
      Uri.parse(Api.preapproveentries + "/" + userid.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      return PreApproveEntry.fromJson(data);
    }
    return PreApproveEntry.fromJson(data);
    ;
  }



  Future updatePreApproveEntryStatusApi({
    required int id,
    required String token,
    required int status,
    required String statusdescription,
    required String cnic,
    required String vechileno,
  }) async {
    print(id);
    print(token);

    final response = await Http.post(
      Uri.parse(Api.updatepreapproveentrystatus),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
      body: jsonEncode(<String, dynamic>{
        "id": id,
        "status": status,
        "statusdescription": statusdescription,
        "cnic": cnic,
        "vechileno": vechileno,
      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);
Get.back();
      // preApproveEntriesApi(data.userid,token);
      // preApproveEntryNotificationApi(userdata.userid!, userdata.bearerToken!);
      update();
      // Get.offAndToNamed(viewSociety, arguments: user);
      //
      Get.snackbar("Status Update Successfully", "");
    } else {
      Get.snackbar("Failed to Update status", "");
    }
  }




  Future updatePreapproveEntryCheckoutStatusApi({
    required int id,
    required String token,
    required int status,
    required String statusdescription,

  }) async {
    print(id);
    print(token);

    final response = await Http.post(
      Uri.parse(Api.updatepreapproveentrycheckoutstatus),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
      body: jsonEncode(<String, dynamic>{
        "id": id,
        "status": status,
        "statusdescription": statusdescription,

      }),
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);
      // Get.back();
      // preApproveEntriesApi(data.userid,token);
      // preApproveEntryNotificationApi(userdata.userid!, userdata.bearerToken!);
      update();
      // Get.offAndToNamed(viewSociety, arguments: user);
      //
      Get.snackbar("Status Update Successfully", "");
    } else {
      Get.snackbar("Failed to Update status", "");
    }
  }





}