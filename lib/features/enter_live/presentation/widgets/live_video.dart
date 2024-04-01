import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/go_live/presentation/widgets/live_chat.dart';

class LiveVideo extends StatefulWidget {
  const LiveVideo({super.key});

  @override
  State<LiveVideo> createState() => _LiveVideoState();
}

class _LiveVideoState extends State<LiveVideo> {
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Video'),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/recommended_events/Rectangle_310.png', 
            fit: BoxFit.cover,
          ),
          Positioned(
            left:5,
            bottom: 85,
            child: TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile4.png'),
                              LiveChat(name: 'Emma4321', message: 'Hello from canada..', imagePath: 'assets/profiles/profile5.png'),
                              LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile6.png'),
                              LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile4.png'),
                              LiveChat(name: 'Emma4321', message: 'Hello from canada..', imagePath: 'assets/profiles/profile5.png'),
                              LiveChat(name: 'Emma4321', message: 'My Fav music Band', imagePath: 'assets/profiles/profile6.png'),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },

              child: const Text('View All Commnets', style:
              TextStyle(fontSize: 16, color: AppPallete.whiteColor),),)),
          Positioned(
            left: 0,
            bottom: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              width: 1.sw,
              height: 0.075.sh,
              child: TextFormField(
                controller: commentController,
                decoration: InputDecoration(
                  hintText: 'Comment here...',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send_outlined, color: AppPallete.gradient2),
                    onPressed: () {
                      // Handle sending the comment
                    },
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
                GestureDetector(
                  onTap: (){

                  },
                  child: Image.asset('assets/recommended_events/Heart.png')),
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
                CircleAvatar(
                    backgroundColor: AppPallete.transparentColor,
                    radius: 15,
                    child: Image.asset('assets/profiles/profile1.png'),
                  ), 
                  const SizedBox(width: 8,),
                  const Text('Emma4321', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppPallete.whiteColor),),
                  const SizedBox(width: 8,),
                  CircleAvatar(
                    backgroundColor: AppPallete.backgroundColor.withOpacity(0.60),
                    radius: 20,
                    child: Image.asset('assets/images/user-check-rounded-bold.png'),
                  ),
                const SizedBox(width: 35,),
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