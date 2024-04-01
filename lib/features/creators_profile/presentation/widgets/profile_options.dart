import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/personal_info.dart';
import 'package:lyve_chat/core/common/widegts/profile_options_field.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/creator_profile_setting.dart';
import 'package:lyve_chat/core/common/widegts/privacy_policy.dart';
import 'package:lyve_chat/core/common/widegts/terms_and_condition.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const  EdgeInsets.all(8.0),
        child: Column(
          children: [
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
                Get.to(const CreatorProfileSetting());
              },),
          ],
        ),
      ),
    );
  }
}