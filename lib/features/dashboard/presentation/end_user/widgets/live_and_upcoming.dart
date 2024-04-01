import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lyve_chat/core/common/widegts/search_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/end_user_static_text.dart';
import 'package:lyve_chat/features/dashboard/presentation/end_user/widgets/recommended_events_list.dart';

class LiveAndUpcoming extends StatelessWidget {
  const LiveAndUpcoming({Key? key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live & Upcoming'),
      ),
      body: Column(
        children: [
          SearchInputField(
            controller: _searchController, 
            hintText: 'Search...',
            icon: const Icon(Icons.search_outlined, color: AppPallete.whiteColor,),
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
                      Tab(text: 'Live'),
                      Tab(text: 'Upcoming'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Expanded(
                    child: TabBarView(
                      children: [
                        // Content for Live tab
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('You\'re following creators on the live', 
                                style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),),
                                const SizedBox(height: 8,),
                                RecommendedEventList(
                                title: 'Music Concert in Forest', 
                                artist: 'Emma', 
                                likes: '2.5', 
                                status: StaticText.live, 
                                imagePath: 'assets/recommended_events/Rectangle_310.png'
                                ),
                                const SizedBox(height: 10,),
                                RecommendedEventList(
                                title: 'Canada day in ottawa', 
                                artist: 'lara', 
                                likes: '20', 
                                status: StaticText.live, 
                                imagePath: 'assets/recommended_events/event6.png'
                                ),
                                const SizedBox(height: 10,),
                                RecommendedEventList(
                                title: 'Canada day in ottawa', 
                                artist: 'lara', 
                                likes: '20', 
                                status: StaticText.live, 
                                imagePath: 'assets/recommended_events/event6.png'
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Content for Upcoming tab
                        SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('You\'re following creators for upcoming live sessions.', 
                                style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),),
                                const SizedBox(height: 8,),
                                RecommendedEventList(
                                title: 'Music Concert in Forest', 
                                artist: 'Emma', 
                                likes: '2.5', 
                                status: StaticText.upcoming, 
                                imagePath: 'assets/recommended_events/Rectangle_310.png',
                                startsIn: DateTime.now().add(const Duration(hours: 23, minutes: 30)),
                                ),
                                const SizedBox(height: 10,),
                                RecommendedEventList(
                                title: 'Canada day in ottawa', 
                                artist: 'lara', 
                                likes: '20', 
                                status: StaticText.upcoming, 
                                imagePath: 'assets/recommended_events/event6.png',
                                startsIn: DateTime.now().add(const Duration(hours: 18, minutes: 30)),
                                ),
                                const SizedBox(height: 10,),
                                RecommendedEventList(
                                title: 'Canada day in ottawa', 
                                artist: 'lara', 
                                likes: '20', 
                                status: StaticText.upcoming, 
                                imagePath: 'assets/recommended_events/event6.png',
                                startsIn: DateTime.now().add(const Duration(hours: 15, minutes: 30)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
