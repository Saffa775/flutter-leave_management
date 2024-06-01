import 'package:flutter/material.dart';

import 'package:leave_manegment/ADMIN/Admin.dart';

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
    return MyAdmin();
    // return AnimatedSplashScreen(
    //   animationDuration: Duration(seconds: 3),
    //   splash: Column(
    //     children: [
    //       Text(
    //         "Apply For Leave",
    //         style: TextStyle(
    //             color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    //       ),
    //       Center(
    //           child:
    //               LottieBuilder.asset("images/Lottie/HomepageAnimation.json")),
    //     ],
    //   ),
    //   nextScreen:
    //       // Responsive.isMobile(context) ? const Homepage() : const
    //       MyAdmin(),
    //   backgroundColor: Color.fromARGB(255, 14, 90, 152),
    //   splashIconSize: 300,
    // );
  }
}
