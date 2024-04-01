import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/creators_bottom_nav_bar.dart';
import 'package:lyve_chat/features/notification/presentation/widgets/notification_generator.dart';

class CreatorNotification extends StatelessWidget {
  const CreatorNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NotificationGenerator(timeAgo: 'Now', message: 'Emma is started following you', imagePath: 'assets/profiles/profile1.png'),
            SizedBox(height: 16,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 16,),
            NotificationGenerator(timeAgo: '20 mins', message: 'Only 1 hour and 20 minutes left until your\nscheduled live event kicks off – get ready to\nshare your story with the world in just a\nshort while!', imagePath: 'assets/profiles/profile3.png'),
            SizedBox(height: 16,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 16,),
            NotificationGenerator(timeAgo: '2 Days ago', message: 'John is started following you', imagePath: 'assets/profiles/profile6.png'),
            SizedBox(height: 16,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 16,),
            NotificationGenerator(timeAgo: '3 Days ago', message: 'William is started following you', imagePath: 'assets/profiles/profile5.png'),
          ],
        ),
      ),
      bottomNavigationBar: CreatorBottomNavBar(),
    );
  }
}