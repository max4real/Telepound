import 'package:api_call/modules/c_data_controller.dart';
import 'package:api_call/modules/login/v_login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true),
    home: const LoginPage(),
  ));
  Get.put(DataController());
}
