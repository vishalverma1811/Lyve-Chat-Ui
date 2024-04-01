import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/notification/presentation/pages/creator_notification.dart';
import 'package:lyve_chat/features/creators_profile/presentation/pages/creators_profile.dart';
import 'package:lyve_chat/features/dashboard/presentation/creators/pages/creator_dashboard.dart';
import 'package:lyve_chat/features/payout/presentation/pages/creators_payout.dart';

class CreatorBottomNavBarController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.to(() => const CreatorDashboard());
        break;
      case 1:
        Get.to(() => const CreatorNotification());
        break;
      case 2:
        Get.to(() => const CreatorPayout());
        break;
      case 3:
        Get.to(() => const CreatorsProfile());
        break;
    }
  }
}

class CreatorBottomNavBar extends StatelessWidget {
  final CreatorBottomNavBarController controller = Get.put(CreatorBottomNavBarController());

  CreatorBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        selectedItemColor: AppPallete.gradient2,
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: controller.selectedIndex.value == 0 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active, color: controller.selectedIndex.value == 1 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet, color: controller.selectedIndex.value == 2 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Payout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded, color: controller.selectedIndex.value == 3 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
