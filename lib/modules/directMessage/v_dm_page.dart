import 'package:api_call/models/m_profile.dart';
import 'package:flutter/material.dart';

class DMPage extends StatelessWidget {
  final ProfileModel profileModel_;
  const DMPage({super.key, required this.profileModel_});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 240, 233, 233),
      appBar: AppBar(
        title: Text(profileModel_.strName),
        backgroundColor:
            const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
        // const Color(0XFFDEAB42).withOpacity(01),
      ),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
            ),
            padding: const EdgeInsets.only(
                // bottom: (MediaQuery.of(context).viewPadding.bottom-10),
                bottom: 10,
                left: 15,
                right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color:
                        // const Color.fromARGB(255, 85, 94, 228).withOpacity(0.9),
                        Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: const TextField(
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    // maxLines: 1,
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "Message",
                        hintStyle: TextStyle(color: Colors.black)),
                    cursorColor: Colors.black45,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.send,
                      size: 20,
                      color: Colors.white,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
