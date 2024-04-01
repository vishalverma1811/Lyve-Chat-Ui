import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/creators_bottom_nav_bar.dart';
import 'package:lyve_chat/features/notification/presentation/widgets/notification_generator.dart';

class UserNotification extends StatelessWidget {
  const UserNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationGenerator(timeAgo: 'Now', message: 'Emma is on live, Music concert in forest', imagePath: 'assets/profiles/profile1.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
              NotificationGenerator(timeAgo: 'Now', message: 'Emma is on live, Music concert in forest', imagePath: 'assets/profiles/profile1.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
              NotificationGenerator(timeAgo: 'Now', message: 'Emma is on live, Music concert in forest', imagePath: 'assets/profiles/profile1.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
              NotificationGenerator(timeAgo: '3 hours ago', message: 'Successfully activated premium \nsubscription plan.', imagePath: 'assets/images/ep_success-filled.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
              NotificationGenerator(timeAgo: '22 Jan 2024, 2:00 PM', message: 'Your subscription plan process is still\npending. make payment and get access.', imagePath: 'assets/images/Vector.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
              NotificationGenerator(timeAgo: '22 Jan 2024, 10:00 AM', message: 'Jack is on live, joy harmonize with the\nsounds of the wild', imagePath: 'assets/profiles/profile7.png'),
              SizedBox(height: 16,),
              Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CreatorBottomNavBar(),
    );
  }
}