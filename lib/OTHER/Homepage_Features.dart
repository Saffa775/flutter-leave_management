import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:leave_manegment/OTHER/AllDashboard.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-1.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-2.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-3.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-4.dart';
import 'package:leave_manegment/IMAGES-DECORATION/SLIDER-5.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  CarouselController controller = CarouselController();
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
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                Container(
                  height: height * 0.85,
                  width: width,
                  // color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: height * 0.5,
                        width: width,
                        // color: Colors.amber,
                        child: CarouselSlider(
                            carouselController: controller,
                            //slider ingredients here//
                            items: [
                              Firstslider(),
                              SecondSlider(),
                              ThirdSlider(),
                              FourthSlider(),
                              FifthSlider(),
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
                              onPageChanged: (i, reason) {
                                setState(() {
                                  index = i;
                                });
                              },
                            )),
                      ),

                      Container(
                        alignment: Alignment.topCenter,
                        height: height * 0.04,
                        width: width * 0.3,
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                  color:
                                      index == 0 ? Colors.black : Colors.amber,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                  color:
                                      index == 1 ? Colors.black : Colors.amber,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                  color:
                                      index == 2 ? Colors.black : Colors.amber,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                  color:
                                      index == 3 ? Colors.black : Colors.amber,
                                  shape: BoxShape.circle),
                            ),
                            Container(
                              height: height * 0.02,
                              width: width * 0.05,
                              decoration: BoxDecoration(
                                  color:
                                      index == 4 ? Colors.black : Colors.amber,
                                  shape: BoxShape.circle),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: height * 0.04,
                        width: width * 0.7,
                        // color: Colors.amber,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                controller.jumpToPage(index - 1);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                size: 30,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                controller.jumpToPage(index + 1);
                              },
                              child: Icon(
                                Icons.arrow_forward,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: height * 0.05,
                        width: width * 0.25,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 14, 75, 124),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyDashboard()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: height * 0.05,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 14, 75, 124),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            "Next",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                        ),
                      ),

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
