import 'dart:convert';

import 'package:gatekeeper/Constants/constants.dart';
import 'package:get/get.dart';
import '../../../Constants/api_routes.dart';

import '../../Login/Model/User.dart';
import 'package:http/http.dart' as Http;

import '../Model/VistorDetail.dart';

class VistorDetailController extends GetxController {
  late final User userdata;

  var data = Get.arguments;
  DateTime currentDateTime = DateTime.now();
  String? currentDate;
  String? currentTime;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    userdata = data;
  }

  viewVistorsDetailApi(int userid, String token) async {
    final response = await Http.get(
      Uri.parse(Api.viewvistordetail + "/" + userid.toString()),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
    );
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      print(response.body);
      return VistorDetail.fromJson(data);
    }
    return VistorDetail.fromJson(data);
  }

  Future UpdateVistorDetailApi({
    required String token,
    required int vid,
    required String checkoutdate,
    required String checkouttime,
  }) async {
    final response = await Http.post(
      Uri.parse(Api.updateVistorStatus),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': "Bearer $token"
      },
      body: jsonEncode(<String, dynamic>{
        "id": vid,
        "checkoutdate": checkoutdate,
        "checkouttime": checkouttime,
        "status": 1,
        "statusdescription": "check-out",
      }),
    );
    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      print('response 200');
      print(data);
      print(response.statusCode);

      //Get.offAndToNamed(vistorDetailScreen, arguments: userdata);
      Get.snackbar('Message:', 'Vistor Check-Out Successfully',
          snackPosition: SnackPosition.TOP,
          showProgressIndicator: true,
          progressIndicatorBackgroundColor: primaryColor);

      viewVistorsDetailApi(userdata.societyid!, userdata.bearerToken!);

      update();

      Get.snackbar("Chgeck-Out Vistor Successfully", "");
    } else {
      Get.snackbar("Failed to Add Vistor Detail", "");
    }
  }
}
