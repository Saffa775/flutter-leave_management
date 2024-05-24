import 'package:flutter/material.dart';

class Firstslider extends StatelessWidget {
  const Firstslider({super.key});

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
                fit: BoxFit.cover, image: AssetImage("images/secure.jpeg"))),
        child: Container(
          height: height,
          width: width * 0.8,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 23, 123, 205).withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.2,
                width: width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "A Safe and secure Plateform for managing your daily basis applications.",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ),
              Container(
                height: height * 0.06,
                width: width * 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Make your work easy!",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
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
