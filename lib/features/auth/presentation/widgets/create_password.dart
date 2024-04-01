import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/common/widegts/text_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({super.key});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 0.15.sh,),
            const Text('Create New Password', 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppPallete.whiteColor),
            ),
            const SizedBox(height: 12,),
            const Text('Please create a new password for your account.\n\t\t\tYour new password must be different\n\t\t\t\t\t\tfrom previously used password', 
            style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
            ),
            const SizedBox(height: 24,),
            TextInputField(hintText: 'New Password', controller: newPassword, icon: const Icon(Icons.lock_outline,), isObscureText: true,),
            const SizedBox(height: 16,),
            TextInputField(hintText: 'Confirm Password', controller: confirmPassword, icon: const Icon(Icons.lock_outline,), isObscureText: true,),
            const SizedBox(height: 24,),
            GradientButton(buttonText: 'Save', onPressed: (){
              Get.offAll(const SignInPage());
            })
          ],
        ),
      ),
    );
  }
}