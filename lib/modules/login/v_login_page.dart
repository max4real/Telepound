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
      backgroundColor: const Color.fromARGB(255, 223, 172, 53),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 500,
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
                    // style: GoogleFonts.robotoSlab(
                    //   fontSize: 40,
                    // )
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    controller: controller.phoneNumber,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.phone_rounded,
                            color: Color.fromARGB(255, 223, 172, 53)),
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
                                color: Color.fromARGB(255, 223, 172, 53)),
                            hintText: "Password",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  controller.xObscured.value =
                                      !controller.xObscured.value;
                                },
                                icon: value
                                    ? const Icon(Icons.visibility_off,
                                        color:
                                            Color.fromARGB(255, 223, 172, 53))
                                    : const Icon(Icons.visibility))),
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
                        color: const Color.fromARGB(255, 223, 172, 53),
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
                          color: const Color.fromARGB(255, 223, 172, 53),
                        ),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
