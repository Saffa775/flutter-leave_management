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
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 30,
                  color: Colors.black,
                ),
                Container(
                  height: height * 0.5,
                  width: width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.4,
                        width: width,
                        color: Colors.amber,
                        child: CarouselSlider(
                            items: [
                              Container(
                                height: height,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("images/secure.jpeg"))),
                                child: Container(
                                  height: height,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 23, 123, 205)
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                              Container(
                                height: height,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("images/slider2.jpeg"))),
                                child: Container(
                                  height: height,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 23, 123, 205)
                                          .withOpacity(0.3),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.end,
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
                              Container(
                                height: height,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image:
                                            AssetImage("images/slider3.jpeg"))),
                                child: Container(
                                  height: height,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 3, 30, 52)
                                          .withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
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
                            ],
                            options: CarouselOptions(
                              height: 300,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.8,
                              initialPage: 0,
                              enableInfiniteScroll: true,
                              reverse: false,
                              autoPlay: true,
                              autoPlayInterval: const Duration(seconds: 3),
                              autoPlayAnimationDuration:
                                  const Duration(milliseconds: 800),
                              autoPlayCurve: Curves.fastOutSlowIn,
                              enlargeCenterPage: true,
                              enlargeFactor: 0.3,
                              scrollDirection: Axis.horizontal,
                            )),
                      ),
                      Container(
                        height: height * 0.05,
                        width: width * 0.8,
                        color: Colors.amber,
                      )
                      // buildCarouseIndicator(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
