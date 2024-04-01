import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';
import 'package:lyve_chat/core/common/widegts/text_input_field.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/auth_static_text.dart';
import 'package:lyve_chat/features/auth/presentation/widgets/signup_verfify.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String selectedCountry = '';
  List<String> countries = ['India', 'America', 'Canada', 'Japan'];

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
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
        appBar: AppBar(),
        backgroundColor: AppPallete.transparentColor,
        body: Center(
          child: Container(
            height: 0.82.sh,
            width: 0.8.sw,
            decoration: BoxDecoration(
              color:AppPallete.signup ,
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
                    children: [
                      Text(SignUpStaticText.createAnAccount, style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8,),
                      Text(SignUpStaticText.signUpDesc, 
                      style: const TextStyle(fontSize: 12),),
                      const SizedBox(height: 24,),
                      TextInputField(
                        hintText: SignUpStaticText.yourName,
                        controller: nameController,
                        icon: const Icon(Icons.account_circle_outlined),
                      ),
                      const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignUpStaticText.yourEmail,
                        controller: emailController,
                        icon: const Icon(Icons.email_outlined),
                    ),
                    const SizedBox(height: 15),
                    DropdownButtonFormField<String>(
                      value: null,
                      onChanged: (value) {
                        selectedCountry = value!;
                      },
                      items: countries.map((category) {
                        return DropdownMenuItem<String>(
                          value: category,
                          child: Text(category),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        hintText: SignUpStaticText.country,
                        border: const OutlineInputBorder(),
                        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                        prefixIcon: const Icon(Icons.add_location_alt_outlined)
                      ),
                    ),
                    const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignUpStaticText.mobileNumber,
                        controller: emailController,
                        icon: const Icon(Icons.flag),
                    ),
                    const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignUpStaticText.dob,
                        controller: emailController,
                        icon: const Icon(Icons.date_range_sharp),
                    ),
                    const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignUpStaticText.yourPassword,
                        controller: emailController,
                        icon: const Icon(Icons.lock_outlined),
                        isObscureText: true,
                    ),
                    const SizedBox(height: 15),
                      TextInputField(
                        hintText: SignUpStaticText.confirmPassword,
                        controller: emailController,
                        icon: const Icon(Icons.lock_outline),
                        isObscureText: true,
                    ),
                    const SizedBox(height: 20,),
                    GradientButton(buttonText: 'Sign Up', onPressed: (){
                      if(formKey.currentState!.validate()){
                        Get.to(const SignUpVerify());
                      }
                    }),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(SignUpStaticText.alreadyAMemeber),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                        Get.to(const SignInPage());
                      },
                        child: Text(SignInStaticText.signIn, 
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