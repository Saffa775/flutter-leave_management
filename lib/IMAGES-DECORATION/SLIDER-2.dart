import 'package:flutter/material.dart';

class SecondSlider extends StatelessWidget {
  const SecondSlider({super.key});

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
                fit: BoxFit.cover, image: AssetImage("images/slider2.jpeg"))),
        child: Container(
          height: height,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 23, 123, 205).withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: height * 0.06,
                width: width * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "SigUp for further details!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 62, 109),
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
