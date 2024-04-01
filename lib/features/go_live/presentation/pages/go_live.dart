import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/go_live/presentation/widgets/live_streaming.dart';
import 'package:lyve_chat/features/go_live/presentation/widgets/preview_live.dart';

class GoLive extends StatelessWidget {
  const GoLive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Live'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Align(alignment: Alignment.center,
                child: Text('Start Live', style: TextStyle(fontSize: 36, color: AppPallete.gradient2, fontWeight: FontWeight.bold),
                )
              ),
              const Text('Enjoy a sneak peek with a preview before going ', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const Text('live, ensuring your audience is in for an ', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const Text('extraordinary experience!', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const SizedBox(height: 16,),
              ElevatedButton(
                onPressed: () {
                    Get.to(const PreviewLive());
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 4, 
                    fixedSize: const Size(395, 55),
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    side: const BorderSide(color: AppPallete.gradient2, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Preview Live',
                        style: TextStyle(
                          color: AppPallete.gradient2,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     
                      Icon(Icons.arrow_right,
                        color: AppPallete.gradient2,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 16,),
              const Text('With just a click, go live directly and share your ', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const Text('moments with the world, no delays, just instant', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const Text('connection!', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
              const SizedBox(height: 16,),
              GradientButton(buttonText: 'Go Live', onPressed: (){
                Get.to(const LiveStreaming());
              }, icon: const Icon(Icons.arrow_right),)
            ],
        ),
      ),
    );
  }
}