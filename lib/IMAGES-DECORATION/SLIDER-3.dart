import 'package:flutter/material.dart';

class ThirdSlider extends StatelessWidget {
  const ThirdSlider({super.key});

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
                fit: BoxFit.cover, image: AssetImage("images/slider3.jpeg"))),
        child: Container(
          height: height,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 30, 52).withOpacity(0.4),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: height * 0.06,
                width: width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Everyone is free to register themselves",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
