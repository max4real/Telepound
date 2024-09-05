import 'package:api_call/modules/directMessage/v_dm_page.dart';
import 'package:api_call/modules/profile/v_profile_page.dart';
import 'package:api_call/modules/user%20list/v_user_page.dart';
// import 'package:api_call/modules/main/c_main.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    // MainPageController controller = Get.put(MainPageController());
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 223, 172, 53),
      backgroundColor: const Color(0XFFF7F7F7),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: shownePage(),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.only(
              bottom: (MediaQuery.of(context).viewPadding.bottom),
              top: 10,
            ),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 0;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.person_rounded,
                        color: (index == 0) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 1;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.history,
                        color: (index == 1) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 2;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.notifications,
                        color: (index == 2) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 3;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.bar_chart_rounded,
                        color: (index == 3) ? Colors.greenAccent : Colors.white,
                      )),
                ),
                Expanded(
                  child: IconButton(
                      onPressed: () {
                        index = 4;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.settings,
                        color: (index == 4) ? Colors.greenAccent : Colors.white,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget shownePage() {
    switch (index) {
      case 0:
        return const UserListPage();
      case 1:
        return const ProfilePage();
      case 2:
        return const ProfilePage();
      case 3:
        return const ProfilePage();
      default:
        return const ProfilePage();
    }
  }
}
