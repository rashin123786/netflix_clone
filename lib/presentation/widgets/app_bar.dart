import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w900),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          color: kWhiteColor,
          size: 30,
        ),
        kWidth,
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kWidth,
      ],
    );
  }
}
