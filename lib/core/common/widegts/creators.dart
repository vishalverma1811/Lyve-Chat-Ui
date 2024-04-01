import 'package:flutter/material.dart';
import 'package:lyve_chat/core/common/widegts/creators_list.dart';
import 'package:lyve_chat/core/common/widegts/search_input_field.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class Creators extends StatelessWidget {
  const Creators({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creators'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              SearchInputField(
                controller: _searchController, 
                hintText: 'Search creator...',
                icon: const Icon(Icons.search_outlined, color: AppPallete.whiteColor,),
                ),
              const SizedBox(height: 24),
              const CreatorsList(imagePath: 'assets/profiles/profile5.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile5.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile5.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile6.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile7.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile7.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile5.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile5.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile6.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile6.png', name: 'John.joe'),
              const SizedBox(height: 16),
              const CreatorsList(imagePath: 'assets/profiles/profile7.png', name: 'John.joe'),
          ],
          ),
        ),
      ),
    );
  }
}