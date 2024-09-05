import 'package:api_call/modules/directMessage/v_dm_page.dart';
import 'package:api_call/modules/user%20list/c_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserListController controller = Get.put(UserListController());
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 240, 233, 233),
      appBar: AppBar(
        title: const Text("Contacts"),
        backgroundColor:
            const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
      ),
      body: ValueListenableBuilder(
        valueListenable: controller.xFecthing,
        builder: (context, value, child) {
          if (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return RefreshIndicator(
              onRefresh: () {
                return controller.initLoad();
              },
              child: ValueListenableBuilder(
                valueListenable: controller.userList,
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(1),
                        elevation: 0.5,
                        child: ListTile(
                          onTap: () {
                            print(value[index].strName);
                            Get.to(() =>DMPage(profileModel_: value[index]));
                          },
                          splashColor: const Color.fromARGB(255, 85, 94, 228)
                              .withOpacity(0.5),
                          style: ListTileStyle.list,
                          leading: const CircleAvatar(
                            radius: 20,
                          ),
                          title: Text(value[index].strName),
                          subtitle: Text(value[index].strPhone),
                        ),
                      );
                    },
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
