import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/core/utils/creators_bottom_nav_bar.dart';
import 'package:lyve_chat/features/payout/presentation/widgets/event_revenue.dart';
import 'package:lyve_chat/features/payout/presentation/widgets/payout_display.dart';
import 'package:lyve_chat/features/payout/presentation/widgets/sort_pannel.dart';

class CreatorPayout extends StatelessWidget {
  const CreatorPayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payout'),
        automaticallyImplyLeading: false,
      ),
      body: const  Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            PayoutDisplay(revenue: '987,765'),
            SizedBox(height: 24,),
            Align(
              alignment: Alignment.topLeft,
              child: Text('Events Revenue Overview', style: TextStyle(fontSize: 20, color: AppPallete.whiteColor),)
            ),
            SizedBox(height: 16,),
            Divider( 
              color: AppPallete.whiteColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 16,),

            EventRevenue(imagePath: 'assets/profiles/profile7.png', 
            eventName: 'Music concert in forest Music\nconcert in forest', 
            revenue: '663,032', 
            dateAndTime: '05 Feb 2024 at 10:43 AM', 
            status: 'Processing'),

            SizedBox(height: 12,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 12,),

            EventRevenue(imagePath: 'assets/profiles/profile5.png', 
            eventName: 'Music concert in forest Music\nconcert in forest', 
            revenue: '663,032', 
            dateAndTime: '05 Feb 2024 at 10:43 AM', 
            status: 'Cancelled'),

            SizedBox(height: 12,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 12,),

             EventRevenue(imagePath: 'assets/profiles/profile3.png', 
            eventName: 'Music concert in forest Music\nconcert in forest', 
            revenue: '663,032', 
            dateAndTime: '05 Feb 2024 at 10:43 AM', 
            status: 'Success'),

            SizedBox(height: 12,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 12,),

            EventRevenue(imagePath: 'assets/profiles/profile6.png', 
            eventName: 'Music concert in forest Music\nconcert in forest', 
            revenue: '663,032', 
            dateAndTime: '05 Feb 2024 at 10:43 AM', 
            status: 'Success'),

            SizedBox(height: 12,),
            Divider( 
              color: AppPallete.borderColor, 
              thickness: 1,
              height: 0,
            ),
            SizedBox(height: 12,),
          ],
        ),
      ),
      bottomNavigationBar: CreatorBottomNavBar(),
      floatingActionButton: IconButton(
        onPressed: (){
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return const SortPannel();
            },
          );
      }, icon: const Icon(Icons.filter_list_outlined)),
    );
  }
}