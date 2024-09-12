import 'package:api_call/modules/main/c_main.dart';
import 'package:api_call/modules/profile/v_profile_page.dart';
import 'package:api_call/modules/user%20list/v_user_page.dart';
// import 'package:api_call/modules/main/c_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
// import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    MainPageController controller = Get.put(MainPageController());
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F7),
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          selectedIndex: controller.selectedIndex.value,
          elevation: 0,
          height: 65,
          onDestinationSelected: (value) {
            controller.selectedIndex.value = value;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.user), label: "CONTACT"),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: "MESSAGE"),
            NavigationDestination(
                icon: Icon(Iconsax.setting), label: "PROFILE"),
          ],
        );
      }),
      body: Obx(() {
        return shownePage();
      }),
    );
  }

  Widget shownePage() {
    MainPageController controller = Get.find();
    switch (controller.selectedIndex.value) {
      case 0:
        return const UserListPage();
      case 1:
        return const ProfilePage();
      case 2:
        return const ProfilePage();
      default:
        return const ProfilePage();
    }
  }
}
