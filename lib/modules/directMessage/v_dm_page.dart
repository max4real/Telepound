import 'package:api_call/models/m_profile.dart';
import 'package:api_call/modules/c_data_controller.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DMPage extends StatelessWidget {
  final ProfileModel profileModel_;
  const DMPage({super.key, required this.profileModel_});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          profileModel_.strName,
          style: const TextStyle(fontSize: 17, color: Colors.white),
        ),
        backgroundColor:Colors.blueGrey
            // const Color.fromARGB(255, 85, 94, 228).withOpacity(0.5),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(child: Placeholder()),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      // controller: _controller,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      maxLines: 4,
                      minLines: 1,
                      onTapOutside:(event) {
                        dismissKeyboard();
                      },
                      decoration: InputDecoration(
                        hintText: "Type a message",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 15.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Iconsax.send_21,color: Colors.blueGrey,),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
