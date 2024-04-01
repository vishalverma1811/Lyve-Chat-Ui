import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class AddedBankDetails extends StatelessWidget {
  final String bankName;
  final String accountHolderName;
  final String routingNumber;
  final String accountNumber;
  final String accountType;
  final bool isChecked;
  final VoidCallback onClicked;
  const AddedBankDetails({super.key, 
  required this.bankName, 
  required this.accountHolderName, 
  required this.routingNumber, 
  required this.accountNumber, 
  required this.accountType, 
  required this.isChecked, 
  required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            color: AppPallete.imageBackground,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
            width: 1,
            color: AppPallete.borderColor
         ),
      ),
      height: 0.3.sh,
      width: 1.sw,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Checkbox(
                 value: isChecked,
                 onChanged: (newValue) {
                   if (newValue != null) {
                     onClicked();
                   }
                 },
                 checkColor: AppPallete.gradient2,
                 activeColor: AppPallete.transparentColor,
               ),
                const SizedBox(width: 16,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Bank Name', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                          const Spacer(),
                          Text(bankName, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('A/C Holder Name', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                          const Spacer(),
                          Text(accountHolderName, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Routing No.', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                          const Spacer(),
                          Text(routingNumber, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Account No.', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                          const Spacer(),
                          Text(accountNumber, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                        ],
                      ),
                      const SizedBox(height: 8,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Account Type', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                          const Spacer(),
                          Text(accountType, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
                        ],
                      ),
                      const SizedBox(height: 16,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            
          }, 
          style: ButtonStyle(
            side: MaterialStateProperty.all(const BorderSide(
              color: AppPallete.borderColor,
              width: 1,
            )),
            shape: MaterialStateProperty.all(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.delete_outlined, color: AppPallete.whiteColor,
                ),
                Text(
                  'Remove',
                  style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8,),
        ],
      ),
    );
  }
}