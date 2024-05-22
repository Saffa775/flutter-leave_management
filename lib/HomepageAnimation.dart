import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/homepage1.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void movePage() {
  //   Future.delayed(Duration(seconds: 6), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //           builder: (context) => Responsive.isMobile(context)
  //               ? const SplashScreen()
  //               : const SplashScreen()),
  //     );
  //   });
  // }

  @override
  void initState() {
    // movePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      animationDuration: Duration(seconds: 3),
      splash: Column(
        children: [
          Text(
            "Apply For Leave",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Center(
              child:
                  LottieBuilder.asset("images/Lottie/HomepageAnimation.json")),
        ],
      ),
      nextScreen: Homepage(),
      backgroundColor: Color.fromARGB(255, 14, 90, 152),
      splashIconSize: 300,
    );
  }
}
