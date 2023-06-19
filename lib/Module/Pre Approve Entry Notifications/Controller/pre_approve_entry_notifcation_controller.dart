import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as Http;

import '../../../Constants/api_routes.dart';
import '../../Login/Model/User.dart';
import '../Model/PreApproveEntry.dart';

class PreApproveEntryNotificationController extends GetxController {
  var user = Get.arguments;
  late final User userdata;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    userdata = user;
    print(userdata.userid);

    print(userdata.bearerToken);
  }

  Future approvedApi({
    required int id,
    required String token,
    required int status,
    required String statusdescription,
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
        "statusdescription": statusdescription
      }),
    );

print(response.statusCode);


    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);
      preApproveEntryNotificationApi(userdata.userid!, userdata.bearerToken!);
      update();
      // Get.offAndToNamed(viewSociety, arguments: user);
      //
      Get.snackbar("Status Update Successfully", "");
    } else {
      Get.snackbar("Failed to Update status", "");
    }
  }

  preApproveEntryNotificationApi(int userid, String token) async {
    print("token $token");
    print("id $userid");
    

    final response = await Http.get(
      Uri.parse(Api.preapproventrynotifications + "/" + userid.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
    );
    var data = jsonDecode(response.body.toString());
    

    if (response.statusCode == 200) {
      print(data);
      return PreApproveEntry.fromJson(data);
    }
    return PreApproveEntry.fromJson(data);
    ;
  }
}
