import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lyve_chat/core/common/widegts/confirmation_dilog.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/go_live/presentation/pages/go_live.dart';

class UpComingEvent extends StatelessWidget {
  final DateTime startsIn;
  final String title;
  final String imagePath;
  const UpComingEvent({
    super.key, required this.startsIn, 
    required this.title,
    required this.imagePath
    });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image.asset(imagePath),
        ),
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
                      text: DateFormat.Hm().format(startsIn), 
                      style: const TextStyle(fontSize: 12, color: AppPallete.whiteColor),
                    ),
                  ]
                ),
                ),
            ),
          ),
          Positioned(
              bottom: 15,
              left: 35,
              child: Container(
              height: 0.03.sh,
              color: AppPallete.textBackground,
              child: Text(title, style: const TextStyle(fontSize: 16, color: AppPallete.whiteColor),)
            ),
          ),
          Positioned(
                bottom: 15,
                right: 15,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: GestureDetector(
                    onTap: () => Get.to(const GoLive()),
                    child: Container(  
                    padding: const EdgeInsets.all(4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color:  AppPallete.errorColor,
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.online_prediction_rounded, color: AppPallete.whiteColor,),
                        Text(
                          'Go Live', style: TextStyle(fontSize: 14, color: AppPallete.whiteColor),),
                      ],
                    ),
                      ),
                  ),
                ),
            ),
            Positioned(
          top: 5,
          right: 15,
          child: PopupMenuButton(
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: 'delete',
                child: Text('Delete'),
              ),
            ],
            onSelected: (String value) {
              if (value == 'delete') {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ConfirmationDialog(
                      dialogContent: 'Are you sure you want to delete this event?',
                      yesOnpressed: (){
                        Get.back();
                      }, 
                    );
                  },
                );
              }
            },
            icon: const Icon(Icons.more_vert),
          ),
        ),
      ],
    );
  }
}