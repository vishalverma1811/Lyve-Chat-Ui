import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/common/widegts/text_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/forgot_pass_verify.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 0.15.sh,),
            const Text('Forgot Password', 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppPallete.whiteColor),
            ),
            const SizedBox(height: 12,),
            const Text('Please enter your email address or phone\nnumber to receive a verification code', 
            style: TextStyle(fontSize: 16,  color: AppPallete.whiteColor),
            ),
            const SizedBox(height: 24,),
            TextInputField(hintText: 'Enter Email', 
            controller: emailController, icon: const Icon(Icons.email_outlined)),
            const SizedBox(height: 30,),
            GradientButton(buttonText: 'Send', onPressed: (){
              Get.to(const ForgotPassVerify());
            }),

          ],
        ),
      ),
    );
  }
}