import 'package:api_call/models/m_profile.dart';
import 'package:api_call/modules/c_data_controller.dart';
import 'package:api_call/services/api_endpoint.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListController extends GetxController {
  DataController dataController = Get.find();
  ValueNotifier<bool> xFecthing = ValueNotifier(false);
  ValueNotifier<List<ProfileModel>> userList = ValueNotifier([]);
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initLoad();
  }

  Future<void> initLoad() async {
    fetchAllUser();
  }

  Future<void> fetchAllUser() async {
    xFecthing.value = true;
    GetConnect client = GetConnect(timeout: const Duration(seconds: 20));

    String alluserUrl = ApiEndpoint.baseUrl + ApiEndpoint.allUserUrl;
    final alluserResponse =
        await client.get(alluserUrl, headers: {"token": dataController.token});
    xFecthing.value = false;

    if (alluserResponse.isOk) {
      if (alluserResponse.body["meta"]["success"]) {
        Iterable iterable = alluserResponse.body["data"] ?? [];
        List<ProfileModel> temp = [];
        for (var element in iterable) {
          ProfileModel profileModel_ = ProfileModel.fromAPI(data: element);
          temp.add(profileModel_);
        }
        userList.value = temp;
      } else {
        Get.snackbar("Error", "Something Wrong Here");
      }
    } else {
      Get.snackbar("Error", "Something Wrong");
    }
  }
}
