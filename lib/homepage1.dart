import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // get imglist => null;

  //  buildCarouseIndicator(){
    
  //     return Container(
  //       child: Row(
  //         children: [
  //           for(int i=0; i<imglist;i++)
  //           Container(
  //             height: 5,
  //             width: 5,
  //             margin: EdgeInsets.all(5),
  //             decoration: BoxDecoration(
  //               color: Colors.amber,
  //               shape: BoxShape.circle,
  //             ),
  //           )
  //         ],
  //       ),
  //     );
  //   }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: height * 0.3,
                width: width * 0.9,
                color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: height * 0.25,
                width: width * 0.9,
                color: Colors.blue,
                child: CarouselSlider(
                    items: [
                      Container(
                        height: height,
                        width: width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/pic1.jpg"))),
                      ),
                      Container(
                        height: height,
                        width: width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/pic2.jpg"))),
                      ),
                      Container(
                        height: height,
                        width: width * 0.7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("images/pic1.jpg"))),
                      ),
                    ],
                    options: CarouselOptions(
                      height: 200,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      scrollDirection: Axis.horizontal,
                    )),
              ),
              // buildCarouseIndicator(),
            ],
          ),
        ),
      ),
    );
   
  }
}
