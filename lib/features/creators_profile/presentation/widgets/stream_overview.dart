import 'package:flutter/material.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class StreamOverview extends StatelessWidget {
  final String imagePath;
  final String description;
  final String dateAndTime;
  const StreamOverview({super.key, 
  required this.imagePath, 
  required this.description, 
  required this.dateAndTime
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Streamed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(imagePath,)),
                Positioned.fill(               
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: AppPallete.textBackground,
                      child: const Text(
                        'Live Ended',
                        style: TextStyle(fontSize: 16, color: AppPallete.whiteColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            const Text('Event Details', style: TextStyle(fontSize: 18, color: AppPallete.whiteColor, fontWeight: FontWeight.bold),),
            Text(description, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
            Text(dateAndTime, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),),
            const SizedBox(height: 16,),
            const Text('Live Overview', style: TextStyle(fontSize: 18, color: AppPallete.whiteColor, fontWeight: FontWeight.bold),),
            const SizedBox(height: 1,),
              const Divider( 
                color: AppPallete.whiteColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 12,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Guest', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('336k', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Comments', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('10,963', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Likes', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('65,492', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Dislikes', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('306', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Time Duration', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('45 min', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('No of Spots', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('350k', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Amount Earned', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('\$663,032', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Commission(40%)', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('\$265,212.80', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Status', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: AppPallete.gradient2.withOpacity(0.50),
                    ),
                    child: const Text('Success', style: TextStyle(fontSize: 16, color: AppPallete.gradient2),)),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payout', style: TextStyle(fontSize: 16, color: AppPallete.borderColor),),
                  Text('\$397,819.20', style: TextStyle(fontSize: 16, color: AppPallete.gradient2),),
                ],
              ),
              const SizedBox(height: 10,),
              const Divider( 
                color: AppPallete.borderColor, 
                thickness: 1,
                height: 0,
              ),
              const SizedBox(height: 10,),
            ]
          ),
        ),
      )
    );
  }
}