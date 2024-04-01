import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';

class FollowingButtonList extends StatelessWidget {
    final String imagePath;
    final String status;
    final String? views;
    final DateTime? dateTime;

    const FollowingButtonList({
      Key? key,
      required this.imagePath,
      required this.status,
      this.views,
      this.dateTime,

    }) : super(key: key);
    

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imagePath),
            ),
            Positioned(
              top: 15,
              left: 15,
              child: Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: status == 'Live' ? AppPallete.errorColor : AppPallete.gradient2,
                ),
                child: Text(
                  status,
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              child: status == 'Live' ? 
              Container(
                height: 0.02.sh,
                width: 0.2.sw,
                color: AppPallete.textBackground,
                child: RichText(text: 
                TextSpan(
                  children: [
                    const WidgetSpan(child: Padding(
                      padding: EdgeInsets.only(left: 4.0, right: 4.0),
                      child: Icon(Icons.visibility_outlined, color: AppPallete.whiteColor,size: 18,),
                    )),
                    TextSpan(
                      text: '${views}k Views',
                      style: const TextStyle(fontSize: 10, color: AppPallete.gradient1)
                    )
                  ]
                ),
                            ),
              ) : 
            Container(
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
                      text: dateTime != null ? DateFormat.Hm().format(dateTime!) : '', 
                      style: const TextStyle(fontSize: 12, color: AppPallete.gradient1),
                    ),
                  ]
                ),
                ),
            ),
          ), 
        ],
      );
    }
}