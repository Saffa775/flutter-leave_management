import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/homepage1.dart';


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
        animationDuration: Duration(seconds: 2),
        splash: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Text(
            "Leave Status",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic),
          ),
        ),
        nextScreen: Homepage(),
        splashTransition: SplashTransition.scaleTransition);

 
  }
}
