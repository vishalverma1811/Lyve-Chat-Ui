import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/confirmation_dilog.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/creators_profile/presentation/widgets/stream_overview.dart';

class StreamedContent extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String dateAndTime;
  const StreamedContent({
    super.key, 
    required this.title,
    required this.imagePath, 
    required this.description, 
    required this.dateAndTime
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.45.sw,
      height: 0.35.sh,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(StreamOverview(
                imagePath: imagePath,
                description: description,
                dateAndTime: dateAndTime,
              ));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 5,
            child: Container(
              height: 0.03.sh,
              color: AppPallete.textBackground,
              child: Text(
                title,
                style: const TextStyle(fontSize: 14, color: AppPallete.whiteColor),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 5,
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
      ),
    );
  }
}
