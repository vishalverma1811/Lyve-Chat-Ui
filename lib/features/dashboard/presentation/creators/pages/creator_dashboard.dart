import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/creators_bottom_nav_bar.dart';
import 'package:lyve_chat/features/dashboard/presentation/creators/widgets/upcoming_event.dart';

class CreatorDashboard extends StatefulWidget {
  const CreatorDashboard({super.key});

  @override
  State<CreatorDashboard> createState() => _CreatorDashboardState();
}

class _CreatorDashboardState extends State<CreatorDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('assets/images/logo.png'),
        automaticallyImplyLeading: false,
        actions: [
          ElevatedButton(
          onPressed: () {
            
          },
          style: ElevatedButton.styleFrom(
            elevation: 4,
            minimumSize: const Size.fromRadius(18), 
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            side: const BorderSide(color: AppPallete.gradient2, width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            '+Create Event',
            style: TextStyle(
              color: AppPallete.gradient2,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Upcoming Events', style: TextStyle(fontSize: 24, color: AppPallete.whiteColor),
            ),
          ),
          const SizedBox(height: 16,),
          UpComingEvent(
            startsIn: DateTime.now().add(const Duration(hours: 20, minutes: 30)),            
            title: 'New Year Celebration', 
            imagePath: 'assets/recommended_events/Rectangle_310.png',
          ),
          const SizedBox(height: 16,),
          UpComingEvent(
            startsIn: DateTime.now().add(const Duration(hours: 20, minutes: 30)),            
            title: 'New Year Celebration', 
            imagePath: 'assets/recommended_events/event2.png',
          ),
        ],),
      ),
      bottomNavigationBar: CreatorBottomNavBar(),
    );
  }
}