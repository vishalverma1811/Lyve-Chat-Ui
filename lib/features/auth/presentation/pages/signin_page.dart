import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signup_page.dart';
import 'package:lyve_chat/core/common/widegts/text_input_field.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/auth_static_text.dart';
import 'package:lyve_chat/features/add_bank_details/presentation/pages/add_bank_details.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/forgot_password.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/pages/end_user_dashboard.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Container(
      constraints: const BoxConstraints.expand(),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/SignUp_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: AppPallete.transparentColor,
        body: Center(
          child: Container(
            height: 0.53.sh,
            width: 0.8.sw,
            decoration: BoxDecoration(
              color:AppPallete.signup,
              boxShadow: [
                  BoxShadow(
                    color: AppPallete.signup.withOpacity(0.1), 
                    blurRadius: 10, 
                    spreadRadius: 5, 
                  ),
                ],
            ),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(SignInStaticText.signIn, style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8,),
                      Text(SignInStaticText.signInDesc, 
                      style: const TextStyle(fontSize: 16),),
                      const SizedBox(height: 24,),
                      TextInputField(
                        hintText: SignInStaticText.email,
                        controller: emailController,
                        icon: const Icon(Icons.email_outlined),
                      ),
                      const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignInStaticText.password,
                        controller: passwordController,
                        icon: const Icon(Icons.lock_outline),
                        isObscureText: true,
                    ),
                    const SizedBox(height: 20,),
                    GradientButton(buttonText: SignInStaticText.signIn, onPressed: (){
                      if(formKey.currentState!.validate()){
                        String email = emailController.text.trim();
                        if (email == 'vishal@123') {
                          Get.to(const AddBankDetails());
                        } else {
                          Get.to(const EndUserDashboard());
                        }
                      }
                    }),
                    const SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () => {
                          Get.to(const ForgotPassword())
                        },
                        child: Text(SignInStaticText.forgotPassword, 
                        style: const TextStyle(color: Colors.white, fontSize: 14,),
                        ),
                        ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(SignInStaticText.notAMember),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                        Get.to(const SignUpPage());
                      },
                        child: Text(SignInStaticText.createAccount, 
                        style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                    color: AppPallete.gradient2,
                                    fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],)
                  ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}