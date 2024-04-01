import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/create_password.dart';
import 'package:pinput/pinput.dart';

class ForgotPassVerify extends StatelessWidget {
  const ForgotPassVerify({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 56,
        height: 56,
        textStyle: TextStyle(
          fontSize: 20,
          color: Theme.of(context).textTheme.bodyLarge!.color, 
          fontWeight: FontWeight.w600,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).dividerColor),
          borderRadius: BorderRadius.circular(20),
        ),
      );

      final focusedPinTheme = defaultPinTheme.copyWith(
        textStyle: defaultPinTheme.textStyle?.copyWith(color: AppPallete.gradient2), // Use gradient2 color for text
        decoration: defaultPinTheme.decoration!.copyWith(
          border: Border.all(color: AppPallete.gradient2), // Use gradient2 color for border
          borderRadius: BorderRadius.circular(8),
        ),
      );

    var code = "1234";
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
            const Text('Please enter the 4 digit code sent to\n\t\t\tjackwilliam@gmail.com', 
            style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
            ),
            const SizedBox(height: 24,),
            Pinput(
                length: 4,
                onChanged: (value){
                  code = value;
                },
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                showCursor: true,
                onCompleted: (pin) => print(pin),
            ),
            const SizedBox(height: 30,),
            GradientButton(buttonText: 'Verify', onPressed: (){
              Get.to(const CreatePassword());
            }),
            const SizedBox(height: 18,),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: '01:00',
                    style: TextStyle(color: Colors.white),
                  ),
                  TextSpan(
                    text: '  ',
                  ),
                  TextSpan(
                    text: 'Resend OTP',
                    style: TextStyle(color: AppPallete.gradient2),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}