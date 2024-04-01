import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/create_event/presentation/widgets/event_details.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Align(alignment: Alignment.center,
              child: Text('Host, stream, captivate!', style: TextStyle(fontSize: 24, color: AppPallete.gradient2),
              )
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('Plan your unique events and share them with',
              style: TextStyle(fontSize: 18, color: AppPallete.whiteColor),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('the world, turning every occasion into a live',
              style: TextStyle(fontSize: 18, color: AppPallete.whiteColor),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text('and interactive experience.',
              style: TextStyle(fontSize: 18, color: AppPallete.whiteColor),
              ),
            ),
            const SizedBox(height: 24,),
            GradientButton(buttonText: 'Create Event', onPressed: (){
              Get.to(const EventDetails());
            })
          ],
        ),
      ),
    );
  }
}