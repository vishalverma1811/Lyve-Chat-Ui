import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/end_user_bottom_nav_bar.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/category_button.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/following_events_list.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/live_and_upcoming.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/recommended_events_list.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/end_user_static_text.dart';
import 'package:lyve_chat/features/enter_live/presentation/pages/enter_live.dart';
import 'package:lyve_chat/features/notification/presentation/pages/user_notification.dart';

class EndUserDashboard extends StatefulWidget {
  const EndUserDashboard({super.key});

  @override
  State<EndUserDashboard> createState() => _EndUserDashboardState();
}

class _EndUserDashboardState extends State<EndUserDashboard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          IconButton(onPressed: (){
            Get.to(const UserNotification());
          }, 
          icon: const Icon(Icons.notifications_active_outlined))
        ],
      ),
      bottomNavigationBar: EndUserBottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryButton(label: StaticText.all,),
                    CategoryButton(label: StaticText.wishlist, image: Image.asset('assets/images/octicon_heart-16.png'),),
                    CategoryButton(label: StaticText.live, image: Image.asset('assets/images/live_video.png'),),
                    CategoryButton(label: StaticText.upcoming),
                    CategoryButton(label: StaticText.sports),
                    CategoryButton(label: StaticText.music),
                    CategoryButton(label: StaticText.gaming),
                    CategoryButton(label: StaticText.charity),
                    CategoryButton(label: StaticText.eCommerce),
                    CategoryButton(label: StaticText.vlogging),
                  ],
                ),
              ),
              const SizedBox(height: 16),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(StaticText.following, style: const TextStyle(fontSize: 20, color: AppPallete.whiteColor),),
                  const Spacer(),
                  GestureDetector(
                    onTap: (){
                      Get.to(const LiveAndUpcoming());
                    },
                    child: Text(StaticText.viewAll, style: const TextStyle(fontSize: 18, color: AppPallete.gradient2),))
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FollowingButtonList(imagePath: 'assets/following_button_images/Rectangle_305.png', status: StaticText.live, views: '224',),
                    FollowingButtonList(imagePath: 'assets/following_button_images/Rectangle_305(1).png', status: StaticText.live, views: '224',),
                    FollowingButtonList(imagePath: 'assets/following_button_images/Rectangle_305(2).png', status: StaticText.upcoming,dateTime: DateTime.now().add(const Duration(hours: 20, minutes: 30)),),
                    FollowingButtonList(imagePath: 'assets/following_button_images/Rectangle_305(2).png', status: StaticText.upcoming, dateTime: DateTime.now().add(const Duration(hours: 20, minutes: 30))),
                  ],
                ),
              ),
              const SizedBox(height: 16),
               Align(
                alignment: Alignment.topLeft,
                child: Text(StaticText.recommendedEvents, style: const TextStyle(fontSize: 20, color: AppPallete.whiteColor),)
                ),
                const SizedBox(height: 12),
                RecommendedEventList(
                  title: 'Music Concert in Forest', 
                  artist: 'Emma', 
                  likes: '2.5', 
                  status: StaticText.live, 
                  imagePath: 'assets/recommended_events/Rectangle_310.png',
                  enterLive: (){
                    Get.to(const EnterLive());
                    },
                  ),
                  const SizedBox(height: 12),
                  RecommendedEventList(
                  title: 'Music Concert in New York', 
                  artist: 'Ed', 
                  likes: '2.5', 
                  status: StaticText.upcoming, 
                  imagePath: 'assets/recommended_events/Rectangle_310.png',
                  startsIn: DateTime.now().add(const Duration(hours: 20, minutes: 30)),
                  ),
                  const SizedBox(height: 12),
                  RecommendedEventList(
                  title: 'Music Concert in Mumbai', 
                  artist: 'Arjit', 
                  likes: '2.5', 
                  status: StaticText.upcoming, 
                  imagePath: 'assets/recommended_events/Rectangle_310.png',
                  startsIn: DateTime.now().add(const Duration(hours: 12, minutes: 30)),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}