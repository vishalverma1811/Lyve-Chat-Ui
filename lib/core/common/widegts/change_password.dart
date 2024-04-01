import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/common/widegts/text_input_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPAssword = TextEditingController();
    TextEditingController newPassword = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
     return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.start,
          children: [
            TextInputField(hintText: 'Old Password', controller: oldPAssword, icon: const Icon(Icons.lock_outline,), isObscureText: true,),
            const SizedBox(height: 16,),
            TextInputField(hintText: 'New Password', controller: newPassword, icon: const Icon(Icons.lock_outline,), isObscureText: true,),
            const SizedBox(height: 16,),
            TextInputField(hintText: 'Confirm Password', controller: confirmPassword, icon: const Icon(Icons.lock_outline,), isObscureText: true,),
            const SizedBox(height: 24,),
            GradientButton(buttonText: 'Change Password', onPressed: (){
              Get.back();
            })
          ],
        ),
      ),
    );
  }
}