import 'package:api_call/models/m_profile.dart';
import 'package:api_call/modules/c_data_controller.dart';
import 'package:api_call/services/api_endpoint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  DataController dataController = Get.find();
  TextEditingController phoneNumber = TextEditingController(text: "");
  TextEditingController password = TextEditingController(text: "");
  ValueNotifier<bool> xFecthing = ValueNotifier(false);

  ValueNotifier<bool> xObscured = ValueNotifier(true);

  Future<void> fetchLogin() async {
    if (phoneNumber.text.isEmpty) {
      Get.snackbar("Error", "Please Enter Phone Number");
    } else if (password.text.isEmpty) {
      Get.snackbar("Error", "Please Enter Password");
    } else {
      xFecthing.value = true;
      String url = ApiEndpoint.baseUrl + ApiEndpoint.loginUrl;
      GetConnect client = GetConnect(timeout: const Duration(seconds: 20));

      final response = await client
          .post(url, {"phone": phoneNumber.text, "password": password.text});

      String token = response.body["data"]["token"].toString();
      dataController.token = token;

      String meUrl = ApiEndpoint.baseUrl + ApiEndpoint.meUrl;
      final meResponse =
          await client.get(meUrl, headers: {"token": dataController.token});

      if (meResponse.isOk) {
        Map<String, dynamic> rawData = meResponse.body["data"] ?? {};
        ProfileModel profileModel_ = ProfileModel.fromAPI(data: rawData);
        dataController.profileModel = profileModel_;
        Get.snackbar(
            "Profile Detail",
            "Id : " +
                dataController.profileModel.strId +
                "\nName : " +
                dataController.profileModel.strName +
                "\nPhone : " +
                dataController.profileModel.strPhone);
      } else {
        Get.snackbar("Error", "Something Wrong");
      }
    }
  }
}
