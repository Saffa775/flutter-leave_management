import 'package:flutter/material.dart';

class FifthSlider extends StatelessWidget {
  const FifthSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                fit: BoxFit.cover, image: AssetImage("images/connected.jpeg"))),
        child: Container(
          height: height,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height * 0.05,
                width: width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Stay Connected with world!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 47, 38, 223),
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
