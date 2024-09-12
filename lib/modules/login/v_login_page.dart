import 'package:api_call/modules/login/c_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: const Color(0XFFA7ADED),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height,
          child: Column(
            children: [
              const Expanded(
                child: SizedBox.shrink(),
              ),
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color(0XFFF7F7F7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        controller: controller.phoneNumber,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.phone_rounded,
                                color: Color(0XFFA7ADED)),
                            hintText: "Phone Number"),
                      ),
                      ValueListenableBuilder(
                        valueListenable: controller.xObscured,
                        builder: (context, value, child) {
                          return TextField(
                            controller: controller.password,
                            obscureText: value,
                            decoration: InputDecoration(
                                border: const OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.password_rounded,
                                    color: Color(0XFFA7ADED)),
                                hintText: "Password",
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      controller.xObscured.value =
                                          !controller.xObscured.value;
                                    },
                                    icon: value
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(
                                            Icons.visibility,
                                            color: Color(0XFF5E6AE2),
                                          ))),
                          );
                        },
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                        onTap: () {
                          controller.fetchLogin();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            // color: const Color(0XFFA7ADED),
                            color: const Color(0XFF5E6AE2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 100),
                          child: const Text(
                            "LOGIN",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "SIGN UP",
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0XFF5E6AE2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
