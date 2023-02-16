import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  final String id;
  final String month;
  final String day;
  final String posterPath;
  final String movieName;
  final String description;
  const ComingSoonWidget({
    Key? key,
    required this.id,
    required this.month,
    required this.day,
    required this.posterPath,
    required this.movieName,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              Text(
                month,
                style: const  TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kGreyColor),
              ),
              Text(
                day,
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               VideoWidget(url: posterPath,),
              Row(
                children: [
                  Expanded(
                    child: Text(
                    movieName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                      style: const  TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtonWidget(
                        icon: Icons.notifications,
                        title: "Remind me",
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth,
                      CustomButtonWidget(
                        icon: Icons.info,
                        title: "Info",
                        iconSize: 20,
                        textSize: 10,
                      ),
                      kWidth,
                    ],
                  ),
                ],
              ),
              kHeightTallGirl,
               Text("Coming On $day $month"),
              kHeight,
               Text(
               movieName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: kWhiteColor),
              ),
              kHeight,
               Text(
                description,
                maxLines: 8,
                overflow: TextOverflow.ellipsis,
                style:const  TextStyle(color: kGreyColor),
              )
            ],
          ),
        ),
      ],
    );
  }
}
