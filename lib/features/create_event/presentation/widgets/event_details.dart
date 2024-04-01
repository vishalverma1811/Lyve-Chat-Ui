import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lyve_chat/core/common/widegts/gradient_button.dart';
import 'package:lyve_chat/core/theme/app_pallete.dart';
import 'package:lyve_chat/features/create_event/presentation/widgets/event_details_field.dart';
import 'package:lyve_chat/features/create_event/presentation/widgets/genre.dart';
import 'package:lyve_chat/features/dashboard/presentation/creators/pages/creator_dashboard.dart';

class EventDetails extends StatefulWidget {
  const EventDetails({super.key});

  @override
  State<EventDetails> createState() => _EventDetailsState();
}

class _EventDetailsState extends State<EventDetails> {
  List<bool> genreClicked = List.generate(8, (index) => false);
  List<String> label = ['Music', 'Sports', 'Gaming', 'Vlogging', 'Wedding', 'E-Commerce', 'Dance' , 'Party'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Fill out the form to create your live streaming event ',
                      style: TextStyle(color: AppPallete.whiteColor, fontSize: 18),
                    ),
                    TextSpan(
                      text: 'and host unforgettable moments by organizing your own events',
                      style: TextStyle(color: AppPallete.gradient2, fontSize: 18),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24,),
              const EventDetailField(heading: 'Event Name', hintText: 'Enter Your Event Title Name'),
              const SizedBox(height: 16,),
              const EventDetailField(heading: 'Host Name', hintText: 'Enter Your Host Name'),
              const SizedBox(height: 16,),
              const EventDetailField(heading: 'Date', hintText: 'dd/mm/yyyy', suffixIcon: Icon(Icons.date_range_outlined),),
              const SizedBox(height: 16,),
              const EventDetailField(heading: 'Time', hintText: 'hh:mm:ss', suffixIcon: Icon(Icons.access_time_outlined),),
              const SizedBox(height: 16,),
              const EventDetailField(heading: 'Number of Spots', hintText: 'Enter the Number of Spots'),
              const SizedBox(height: 16,),
              const EventDetailField(heading: 'Event Duration', hintText: 'Select Event Duration', suffixIcon: Icon(Icons.arrow_downward_outlined),),
              const SizedBox(height: 16,),
              const Align(
                alignment: Alignment.topLeft,
                child:  Text('Upload Thumbnail', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),)),
              Row(
                children: [
                  DottedBorder(
                  color: AppPallete.borderColor,
                  strokeWidth: 1,
                  child: SizedBox(
                    width: 0.45.sw,
                    height: 0.12.sh,
                    child: Column(
                      children: [
                        IconButton(onPressed: (){}, icon: const Icon(Icons.camera_rounded)),
                        const Text('Upload Thumbnail', style: TextStyle(fontSize: 14, color: AppPallete.whiteColor),),
                        const Text('(2MB or less)', style: TextStyle(fontSize: 14, color: AppPallete.whiteColor),)
                      ],
                    ),
                  ),
                  ),
                  const SizedBox(width: 16,),
                  Stack(
                  children: [
                  SizedBox(
                    width: 0.45.sw,
                    child: Image.asset('assets/images/upload_image.png'),
                  ),
                  Positioned(
                    top: 0,
                    right: 15,
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        height: 0.09.sh,
                        width: 0.09.sw,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, 
                            color: AppPallete.whiteColor,
                          ),
                        child: Image.asset(
                          'assets/images/edit.png',
                          width: 0.55.sw,
                          height: 0.55.sh,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
                ],
              ),
              const Align(
                alignment: Alignment.topLeft,
                child:  Text('Genre', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ),
              const SizedBox(height: 16,),
              Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 0; i < 4; i++)
                        Genre(
                          label: label[i],
                          isClicked: genreClicked[i],
                          onTap: () {
                            setState(() {
                              genreClicked[i] = !genreClicked[i];
                            });
                          },
                        ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (int i = 4; i < 8; i++)
                        Genre(
                          label: label[i],
                          isClicked: genreClicked[i],
                          onTap: () {
                            setState(() {
                              genreClicked[i] = !genreClicked[i];
                            });
                          },
                        ),
                    ],
                  ),
                const SizedBox(height: 16,),
                const EventDetailField(heading: 'Event Entry Fee', hintText: 'Enter Entry Fee'),
                const SizedBox(height: 24,),
                GradientButton(buttonText: 'Create Event', onPressed: (){
                  Get.to(const CreatorDashboard());
                }),
                const SizedBox(height: 16,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}