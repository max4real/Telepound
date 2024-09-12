import 'package:api_call/modules/c_data_controller.dart';
import 'package:api_call/modules/login/v_login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

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
                  height: 60,
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
                      height: 200,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 45,
                            backgroundColor:
                                const Color.fromARGB(255, 85, 94, 228)
                                    .withOpacity(0.5),
                            child: Text(
                              dataController.profileModel.strName[0],
                              style: const TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(dataController.profileModel.strName,
                              style: const TextStyle(
                                fontSize: 18,
                              )),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(dataController.profileModel.strPhone,
                              style: const TextStyle(
                                fontSize: 14,
                              )),
                          SizedBox(
                            width: 105,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Row(
                                children: [
                                  Text("Edit"),
                                  Spacer(),
                                  Icon(
                                    Iconsax.edit,
                                    size: 20,
                                  ),
                                ],
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
                              Get.offAll(() => const LoginPage());
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
