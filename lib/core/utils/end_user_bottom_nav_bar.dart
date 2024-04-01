import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/pages/end_user_dashboard.dart';
import 'package:lyve_chat/features/following/presentation/pages/following.dart';
import 'package:lyve_chat/features/profile/presentation/pages/profile.dart';
import 'package:lyve_chat/features/search/presentation/pages/search.dart';

class EndUserBottomNavBarController extends GetxController {
  var selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    switch (index) {
      case 0:
        Get.to(() => const EndUserDashboard());
        break;
      case 1:
        Get.to(() => const SearchPage());
        break;
      case 2:
        Get.to(() => const FollowingPage());
        break;
      case 3:
        Get.to(() => const ProfilePage());
        break;
    }
  }
}

class EndUserBottomNavBar extends StatelessWidget {
  final EndUserBottomNavBarController controller = Get.put(EndUserBottomNavBarController());

  EndUserBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        selectedItemColor: AppPallete.gradient2,
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changePage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore, color: controller.selectedIndex.value == 0 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, color: controller.selectedIndex.value == 1 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded, color: controller.selectedIndex.value == 2 ? AppPallete.gradient2 : AppPallete.whiteColor,),
            label: 'Following',
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
