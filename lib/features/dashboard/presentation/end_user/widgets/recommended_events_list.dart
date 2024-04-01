import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class RecommendedEventList extends StatelessWidget {
  final String title;
  final String artist;
  final String likes;
  final String status;
  final String imagePath;
  final DateTime? startsIn;
  final VoidCallback? enterLive;

  const RecommendedEventList({
    super.key, 
    required this.title, 
    required this.artist, 
    required this.likes, 
    required this.status, 
    required this.imagePath, 
    this.startsIn,
    this.enterLive
    });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: <Widget>[
            GestureDetector(
              onTap: status == 'Live' && enterLive != null ? enterLive : null,
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(imagePath),
              ),
            ),
            Positioned(
              top : 15,
              right: 15,
              child: Padding(
                padding:  const EdgeInsets.only(right: 12.0),
                child: Image.asset('assets/recommended_events/Heart.png'),
              )
              ),
              Positioned(
                bottom: 15,
                right: 15,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Container(  
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: status == 'Live' ? AppPallete.errorColor : AppPallete.gradient2,
                  ),
                  child: Text(
                    status, style: const TextStyle(fontSize: 14, color: AppPallete.whiteColor),),
                    ),
                ),
            ),
            if(status != 'Live')
            Positioned(
              top: 15,
              left: 35,
              child: Container(
              height: 0.02.sh,
              width: 0.2.sw,
              color: AppPallete.textBackground,
              child: RichText(
                text:  TextSpan(
                  children: [
                    const TextSpan(
                      text: 'Starts in ',
                      style: TextStyle(fontSize: 12, color: AppPallete.whiteColor),
                    ),
                    TextSpan(
                      text: startsIn != null ? DateFormat.Hm().format(startsIn!) : '', 
                      style: const TextStyle(fontSize: 12, color: AppPallete.whiteColor),
                    ),
                  ]
                ),
                ),
            ),)
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 6.0),
              child: CircleAvatar(
                backgroundColor: AppPallete.transparentColor,
                child: Image.asset('assets/recommended_events/Ellipse_23.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
          alignment: Alignment.topLeft,
           child: Text(title, style: const TextStyle(fontSize: 18, color: AppPallete.whiteColor ),
           ),
         ),
         Align(
          alignment: Alignment.topLeft,
          child: Text(artist, style: const TextStyle(fontSize: 14, color: AppPallete.whiteColor),)),
           Row(
             children: [
               const Icon(Icons.thumb_up_outlined, size: 20,color: AppPallete.whiteColor,),
               const SizedBox(width: 4,),
               Text('${likes}k', style: const TextStyle(fontSize: 12, color: AppPallete.whiteColor),),
               const SizedBox(width: 8,),
               const Icon(Icons.thumb_down_outlined, size: 20,color: AppPallete.whiteColor,),
             ],
           ),
              ],
            )
        ],),        
      ],
    );
  }
}
