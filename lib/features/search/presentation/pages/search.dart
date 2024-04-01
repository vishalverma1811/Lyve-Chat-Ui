import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/creator_suggestion.dart';
import 'package:lyve_chat/core/common/widegts/creators.dart';
import 'package:lyve_chat/core/common/widegts/search_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/end_user_bottom_nav_bar.dart';
import 'package:lyve_chat/features/search/presentation/widgets/genres.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
 final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
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
              hintText: 'Search genre, creator, live events...',
              icon: const Icon(Icons.search_outlined, color: AppPallete.whiteColor,),
              ),
              const SizedBox(height: 16),
              const Text('Genres', style: TextStyle(color: AppPallete.whiteColor, fontSize: 20),),
              const Row(children: [
                Genres(imagePath: 'assets/genres/sports.png', title: 'Sports'),
                SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/gaming.png', title: 'Gaming'),
                 SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/music.png', title: 'Music'),
              ],),
              const SizedBox(height: 8),
              const Row(children: [
                Genres(imagePath: 'assets/genres/vlogging.png', title: 'Vlogging'),
                 SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/charity.png', title: 'Charity'),
                 SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/dance.png', title: 'Dance'),
              ],),
              const SizedBox(height: 8),
              const Row(children: [
                Genres(imagePath: 'assets/genres/drama.png', title: 'Drama'),
                 SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/action.png', title: 'Action'),
                 SizedBox(width: 8,),
                Genres(imagePath: 'assets/genres/eCommerce.png', title: 'E Commerce'),
              ],),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Creators', style: TextStyle(fontSize: 20, color: AppPallete.whiteColor),),
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