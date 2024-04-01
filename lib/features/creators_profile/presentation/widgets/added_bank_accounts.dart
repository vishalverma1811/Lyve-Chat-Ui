import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/added_bank_details.dart';

class AddedBankAcc extends StatefulWidget {
  const AddedBankAcc({Key? key});

  @override
  State<AddedBankAcc> createState() => _AddedBankAccState();
}

class _AddedBankAccState extends State<AddedBankAcc> {
  bool isTapped = false;

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
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Your bank details', style: TextStyle(fontSize: 18, color: AppPallete.whiteColor),
            )),
            const SizedBox(height: 16),
            AddedBankDetails(
              bankName: 'Royal Bank of Canada',
              accountHolderName: 'Jack William',
              routingNumber: '9845637219',
              accountNumber: '9845637219',
              accountType: 'Savings',
              isChecked: isTapped, 
              onClicked: () {
                setState(() {
                  isTapped = !isTapped;
                });
              },
            ),
            const Spacer(),
            GradientButton(buttonText: '+ Add Another Bank Details', onPressed: () {}),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
