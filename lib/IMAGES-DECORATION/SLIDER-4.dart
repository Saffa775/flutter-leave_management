// ignore_for_file: sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';

class FourthSlider extends StatelessWidget {
  const FourthSlider({super.key});

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
                fit: BoxFit.cover, image: AssetImage("images/student.jpeg"))),
        child: Container(
          height: height,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 223, 189, 189).withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height * 0.15,
                width: width * 0.6,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "A fully functional effort to keep you in dicipline and lined_up.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 16, 65, 108),
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
