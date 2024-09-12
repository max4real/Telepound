import 'package:api_call/modules/c_data_controller.dart';
import 'package:api_call/modules/login/v_login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    DataController dataController = Get.find();
    return Scaffold(
      // backgroundColor: const Color(0XFFF7F7F7),
      body: Padding(
          padding: EdgeInsets.only(
              top: (MediaQuery.of(context).viewPadding.top),
              left: 18,
              right: 18),
          child: Column(
            children: [
              const SizedBox(
                  width: double.infinity,
                  height: 70,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Profile",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  )),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 210,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundColor:
                                const Color.fromARGB(255, 85, 94, 228)
                                    .withOpacity(0.5),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(dataController.profileModel.strName,
                              style: TextStyle(
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(dataController.profileModel.strPhone,
                              style: TextStyle(
                                fontSize: 13,
                              )),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 201, 202, 212)
                                          .withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(8)),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              margin: EdgeInsets.only(top: 10),
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(children: [
                        Card(
                          margin: const EdgeInsets.all(1),
                          elevation: 0.5,
                          child: ListTile(
                            onTap: () {
                              Get.offAll(()=>const LoginPage());
                            },
                            splashColor: const Color.fromARGB(255, 85, 94, 228)
                                .withOpacity(0.5),
                            style: ListTileStyle.list,
                            leading: const Icon(Icons.login_rounded),
                            title: const Text("Logout"),
                          ),
                        )
                      ]),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
