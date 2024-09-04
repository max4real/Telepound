import 'package:api_call/modules/profile/c_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController controller = Get.put(ProfileController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 172, 53),
      body: Scaffold(),
    );
  }
}
