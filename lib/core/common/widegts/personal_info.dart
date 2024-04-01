import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/profile/presentation/widgets/personal_info_field.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal info'),
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
            SizedBox(height: 0.1.sh,),
            const PersonalInfoField(
              defaultValue: 'Jack William', 
              prefixIcon: Icon(Icons.person_2_outlined, 
              color: AppPallete.whiteColor,)
              ),
              const SizedBox(height: 16,),
              const PersonalInfoField(
              defaultValue: 'Jackwilliam@gmail.com', 
              prefixIcon: Icon(Icons.email_outlined, 
              color: AppPallete.whiteColor,)
              ),
              const SizedBox(height: 16,),
              const PersonalInfoField(
              defaultValue: '+16543217890',
              prefixIcon: Icon(Icons.flag, 
              color: AppPallete.whiteColor,)
              ),
              const SizedBox(height: 16,),
              Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: TextEditingController(text: '2000-01-01'),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today, color: AppPallete.whiteColor),
                      hintText: 'Date of Birth',
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person, color: AppPallete.whiteColor),
                      hintText: 'Gender',
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    ),
                    value: 'Male',
                    items: ['Male', 'Female'].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? value) {},
                  ),
                ),
              ],
            ),
            const Spacer(),
            GradientButton(buttonText: 'Save', onPressed: (){
            Get.back();
            }),
            const SizedBox(height: 24,),
          ],
        ),
      ),
    );
  }
}