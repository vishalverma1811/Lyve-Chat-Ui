import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class PreviewLive extends StatelessWidget {
  const PreviewLive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Preview Live Stream'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/recommended_events/Rectangle_310.png', 
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 0.4.sw,
            bottom: 15,
            child: ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppPallete.errorColor,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16),
              ),
              child: const Icon(
                Icons.stop,
                color: AppPallete.whiteColor,
                size: 36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
