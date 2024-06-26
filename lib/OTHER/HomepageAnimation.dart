// ignore_for_file: file_names, unused_import

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/ADMIN/Admin-Login.dart';
import 'package:leave_manegment/ADMIN/Admin.dart';
import 'package:leave_manegment/OTHER/Homepage_Features.dart';
import 'package:leave_manegment/OTHER/responsive.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
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
  //               ? const Homepage()
  //               : const MyAdmin()),
  //     );
  //   });
  // }

  @override
  void initState() {
    //  movePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
    
    AnimatedSplashScreen(
      animationDuration: const Duration(seconds: 3),
      splash: Column(
        children: [
          const Text(
            "Leave Management System",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Center(
              child:
                  LottieBuilder.asset("images/Lottie/HomepageAnimation.json")),
        ],
      ),
      nextScreen:
          Responsive.isMobile(context) ? const Homepage() : const AdminLogin(),
      backgroundColor: const Color.fromARGB(255, 14, 90, 152),
      splashIconSize: 300,
    );
  }
}
