import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';
import 'package:lyve_chat/core/common/widegts/change_password.dart';
import 'package:lyve_chat/core/common/widegts/confirmation_dilog.dart';
import 'package:lyve_chat/core/common/widegts/profile_options_field.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileOptionsField(hintText: 'Change Password', prefixIcon: const Icon(Icons.lock_outline), onPressed: (){
              Get.to(const ChangePassword());
            }),
            const SizedBox(height: 16,),
            ProfileOptionsField(
            hintText: 'Delete Account',
            prefixIcon: const Icon(Icons.delete_outline),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ConfirmationDialog(
                    dialogContent: 'Are you sure you want to delete account',
                    yesOnpressed: () {
                      Get.offAll(const SignInPage());
                    },
                  );
                },
              );
            },
            ),
          ],
        ),
      ),
    );
  }
}