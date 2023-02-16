import 'package:flutter/material.dart';

import '../core/colors/colors.dart';
import 'main_page/screen_main_page.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    goToScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/netflixsplash1.gif'),
          ),
        ),
      ),
    );
  }

  Future<void> goToScreen() async {
    await Future.delayed(const Duration(milliseconds: 2600));
    if (!mounted) {
      return;
    }
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => ScreenMainPage()));
  }
}
