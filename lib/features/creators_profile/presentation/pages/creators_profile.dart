import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/confirmation_dilog.dart';
import 'package:lyve_chat/core/common/widegts/search_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/creators_bottom_nav_bar.dart';
import 'package:lyve_chat/features/auth/presentation/pages/signin_page.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/followers_content.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/profile_details.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/streamed_content.dart';

class CreatorsProfile extends StatefulWidget {
  const CreatorsProfile({Key? key}) : super(key: key);

  @override
  State<CreatorsProfile> createState() => _CreatorsProfileState();
}

class _CreatorsProfileState extends State<CreatorsProfile> {
  final TextEditingController followerController = TextEditingController();
  final TextEditingController streamController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ConfirmationDialog(
                    dialogContent: 'Do you want to logout this account?',
                    yesOnpressed: () {
                      Get.offAll(const SignInPage());
                    },
                  );
                },
              );
            },
            icon: const Icon(Icons.logout_outlined, color: AppPallete.whiteColor),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ProfileDetails(
              name: 'Jack William',
              email: 'Jackwilliam@gmail.com',
              imagePath: 'assets/profiles/profile1.png',
            ),
             const SizedBox(height: 20),
            Expanded(
              child: DefaultTabController(
                length: 2, 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     const TabBar(
                      labelColor: AppPallete.whiteColor,
                      unselectedLabelColor: AppPallete.borderColor,
                      indicatorColor: AppPallete.gradient2,
                      tabs: [
                        Tab(text: 'Followers'),
                        Tab(text: 'Streamed'),
                      ],
                    ),
                     const SizedBox(height: 10),
                    Expanded(
                      child: TabBarView(
                        children: [
                          // Content for Followers tab
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                SearchInputField(hintText: 'Search', controller: followerController, icon: const Icon(Icons.search)),
                                const SizedBox(height: 16,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile5.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile6.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile7.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile1.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile2.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile3.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile4.png'),
                                const SizedBox(height: 10,),
                                const FollowersContent(name: 'John.joe', description: 'Sports Creator', imagePath: 'assets/profiles/profile7.png'),
                              ],
                            ),
                          ),
                          // Content for Streamed tab
                          SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SearchInputField(hintText: 'Search', controller: streamController, icon: const Icon(Icons.search)),
                                const SizedBox(height: 16,),
                                const Row(
                                  children: [
                                    StreamedContent(title: 'New Year Celebration', 
                                    imagePath: 'assets/recommended_events/Rectangle_310.png', 
                                    description: 'Music concert in forest Music concert in forest\nMusic concert', 
                                    dateAndTime: '02 Jan 2024 at 10:43 AM',),
                                    Spacer(),
                                    StreamedContent(title: 'Wedding Party', 
                                    imagePath: 'assets/recommended_events/event5.png',
                                    description: 'Weeding Party in Resort\nWedding Party',
                                    dateAndTime: '05 Feb 2024 at 14:43 PM',
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16,),
                                const Row(
                                  children: [
                                    StreamedContent(title: 'Sports Day', 
                                    imagePath: 'assets/recommended_events/event3.png',
                                    description: 'Sports Day at High school\nSports Day',
                                    dateAndTime: '10 Mar 2024 at 12:43 PM',
                                    ),
                                    Spacer(),
                                    StreamedContent(title: 'Street Festival', 
                                    imagePath: 'assets/recommended_events/event4.png',
                                    description: 'Street Festival in Spain\nStreet Festival',
                                    dateAndTime: '15 Apr 2024 at 15:43 PM',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CreatorBottomNavBar(),
    );
  }
}
