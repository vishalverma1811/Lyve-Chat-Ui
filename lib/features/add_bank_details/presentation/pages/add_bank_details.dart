import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/add_bank_details/presentation/widgets/bank_details.dart';

class AddBankDetails extends StatelessWidget {
  const AddBankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(alignment: Alignment.center,
              child: Text('Link Bank Details', style: TextStyle(fontSize: 24, color: AppPallete.gradient2),
              )
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('You\'re just a step away from uploading',
              style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('live streams! Link your bank account to',
              style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('get started.',
              style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
              ),
            ),
            const SizedBox(height: 24,),
            GradientButton(buttonText: 'Add Bank Details', onPressed: (){
              Get.to(const BankDetails());
            })
          ],
        ),
      ),
    );
  }
}