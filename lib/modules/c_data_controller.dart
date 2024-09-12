import 'package:api_call/models/m_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void dismissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}

class DataController extends GetxController {
  String token = "";
  late ProfileModel profileModel;
}
