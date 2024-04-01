import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/add_bank_details/presentation/widgets/bank_details_field.dart';
import 'package:lyve_chat/features/create_event/presentation/pages/create_event.dart';

class BankDetails extends StatelessWidget {
  const BankDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please enter bank details',style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
            const SizedBox(height: 24,),
            Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: const BankDetailField(heading: 'Bank Name *', hintText: 'Enter Bank Name')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Account Holder Name *', hintText: 'Account Holder Name')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Routing Number ', hintText: 'Enter Routing Number')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Account Type *', hintText: 'Enter Account Type')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Bank Number *', hintText: 'Enter Bank Number')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Transit Number  *', hintText: 'Enter Transit Number ')),
            const SizedBox(height: 12,),
            Container(
              margin: const EdgeInsets.only(left: 16,right: 16),
              child: const BankDetailField(heading: 'Account Number *', hintText: 'Enter Account Number')),
              const SizedBox(height: 16,),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('\u2022 ', style: TextStyle(fontSize: 12, color: AppPallete.whiteColor)),
                    Expanded(
                      child: Text(
                        'Please ensure the above bank details are accurate',
                        style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30,),
              Container(
                margin: const EdgeInsets.only(left: 16,right: 16),
                child: GradientButton(buttonText: 'Save', onPressed: (){
                  Get.to(const CreateEvent());
                }),
              )
          ],
        ),
      ),
    );
  }
}