import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/go_live/presentation/widgets/live_chat.dart';

class LiveStreaming extends StatefulWidget {
  const LiveStreaming({Key? key}) : super(key: key);

  @override
  State<LiveStreaming> createState() => _LiveStreamingState();
}

class _LiveStreamingState extends State<LiveStreaming> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Streaming'),
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
          Positioned(
            right: 15,
            bottom: 0.2.sh,
            child: Column(
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_up_outlined)),
                const Text('20k', style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),),
                IconButton(onPressed: (){}, icon: const Icon(Icons.thumb_down_outlined)),
              ],
            )
          ),
          Positioned(
            left: 15,
            bottom: 0.15.sh,
            child: const Column(
              children: [
                LiveChat(name: 'Emma4321', message: 'Hello from canada..', imagePath: 'assets/profiles/profile3.png', isFade: true,),
                LiveChat(name: 'Emma4321', message: 'Hello from canada..', imagePath: 'assets/profiles/profile3.png', isFade: true,),
                LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile4.png'),
                LiveChat(name: 'Emma4321', message: 'Hello from canada..', imagePath: 'assets/profiles/profile5.png'),
                LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile6.png'),
              ],
            )
          ),
          Positioned(
            right: 105,
            top: 15,
            child: Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 0.028.sh,
                  padding: const EdgeInsets.all(4.0),
                  color: AppPallete.errorColor,
                  child: RichText(text: const TextSpan(
                    children: [
                      TextSpan(
                        text: '\u2022 ',
                        style: TextStyle(
                          fontSize: 16,
                          color: AppPallete.gradient2,
                        )
                      ),
                      TextSpan(
                      text: 'Live',
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                        fontSize: 16,
                      ),
                    ),
                     TextSpan(
                      text: ' 01:15', 
                      style: TextStyle(
                        color: AppPallete.whiteColor,
                        fontSize: 16,
                      ), 
                     ),                   
                    ]
                  )
                  ),
                ),
              ],
            )
          ),
          Positioned(
            right: 15,
            top: 15,
            child: Container(
              alignment: Alignment.center,
              height: 0.032.sh,
              padding: const EdgeInsets.all(4.0),
              color: AppPallete.backgroundColor,
              child: const Row(
                children: [
                  Icon(Icons.visibility_outlined, color: AppPallete.whiteColor,),
                  SizedBox(width: 8,),
                  Text('356k', style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),)
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
