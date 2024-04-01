import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class ConfirmationDialog extends StatelessWidget {
  final String dialogContent;
  final VoidCallback yesOnpressed;
  const ConfirmationDialog({
    super.key, 
    required this.dialogContent,
    required this.yesOnpressed,
    });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Confirmation'),
      content: Text(dialogContent, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
      actions: <Widget>[
        TextButton(
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(AppPallete.errorColor)
            ),
          onPressed: (){
          Get.back();
        }, child: const Text('No', style: TextStyle(color: AppPallete.whiteColor),),
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor:  MaterialStateProperty.all(AppPallete.gradient2)
            ),
          onPressed: (){
          yesOnpressed();
        }, 
        child: const Text('Yes', style: TextStyle(color: AppPallete.whiteColor),),
        ),
      ],
    );
  }
}