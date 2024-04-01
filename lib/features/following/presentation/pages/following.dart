import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/creator_suggestion.dart';
import 'package:lyve_chat/core/common/widegts/creators.dart';
import 'package:lyve_chat/core/common/widegts/search_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/end_user_bottom_nav_bar.dart';
import 'package:lyve_chat/features/following/presentation/widgets/following_list.dart';

class FollowingPage extends StatefulWidget {
  const FollowingPage({super.key});

  @override
  State<FollowingPage> createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Following'),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            SearchInputField(
              controller: _searchController, 
              hintText: 'Search...',
              icon: const Icon(Icons.search_outlined, color: AppPallete.whiteColor,),
            ),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
            const FollowingList(imagePath: 'assets/profiles/profile3.png', name: 'John.joe'),
            const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Suggestions', style: TextStyle(fontSize: 20, color: AppPallete.whiteColor),),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Get.to(const Creators());
                    },
                    child: const Text('View All', style: TextStyle(fontSize: 18, color: AppPallete.gradient2),)
                    )
                ],
              ),
              const SizedBox(height: 20),
               const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CreatorSuggestiom(imagePath: 'assets/profiles/profile1.png', name: 'Lara.joe'),
                    SizedBox(width: 16,),
                    CreatorSuggestiom(imagePath: 'assets/profiles/profile2.png', name: 'John.joe'),
                    SizedBox(width: 16,),
                    CreatorSuggestiom(imagePath: 'assets/profiles/profile1.png', name: 'Lara.joe'),
                    SizedBox(width: 16,),
                    CreatorSuggestiom(imagePath: 'assets/profiles/profile2.png', name: 'John.joe'),
                  ],
                ),
              )
          ],
        ),
      ),
      bottomNavigationBar: EndUserBottomNavBar(),
    );
  }
}