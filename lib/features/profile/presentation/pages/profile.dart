import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/end_user_bottom_nav_bar.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';
import 'package:lyve_chat/core/common/widegts/personal_info.dart';
import 'package:lyve_chat/features/profile/presentation/pages/settings.dart';
import 'package:lyve_chat/core/common/widegts/privacy_policy.dart';
import 'package:lyve_chat/core/common/widegts/profile_options_field.dart';
import 'package:lyve_chat/core/common/widegts/terms_and_condition.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  const CircleAvatar(
                    radius: 85,
                    foregroundImage: AssetImage('assets/profiles/profile4.png'),
                    backgroundColor: AppPallete.transparentColor,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 0.09.sh,
                        width: 0.09.sw,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, 
                            color: AppPallete.whiteColor,
                          ),
                        child: Image.asset(
                          'assets/images/edit.png',
                          width: 0.55.sw,
                          height: 0.55.sh,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            const Text('Jack William', style: TextStyle(fontSize: 20),),
            const Text('Jackwilliam@gmail.com', style: TextStyle(fontSize: 16),),
            const SizedBox(height: 24,),
            ProfileOptionsField(hintText: 'Manage Account', prefixIcon: const Icon(Icons.person_2_outlined), onPressed: (){
              Get.to(const PersonalInfo());
            },),
            const SizedBox(height: 16,),
            ProfileOptionsField(hintText: 'Privacy Policy', prefixIcon: const Icon(Icons.info_outline_rounded), onPressed: (){
              Get.to(const PrivacyPolicy());
              },),
            const SizedBox(height: 16,),
            ProfileOptionsField(hintText: 'Terms and Conditions', prefixIcon: const Icon(Icons.speaker_notes_outlined), onPressed: (){
              Get.to(const TermsAndCondition());
            },),
            const SizedBox(height: 16,),
            ProfileOptionsField(hintText: 'Settings', prefixIcon: const Icon(Icons.settings_outlined), onPressed: (){
              Get.to(const Setting());
            },),
            const Spacer(),
            GradientButton(buttonText: 'Log Out', onPressed: (){
              Get.offAll(const SignInPage());
            }, icon: const Icon(Icons.logout_outlined),),
            const SizedBox(height: 24,),
          ],
        ),
      ),
      bottomNavigationBar: EndUserBottomNavBar(),
    );
  }
}