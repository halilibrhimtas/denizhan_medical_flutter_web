// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:google_fonts/google_fonts.dart";

class LaparaskopikUrunler extends StatefulWidget {
  const LaparaskopikUrunler({super.key});

  @override
  State<LaparaskopikUrunler> createState() => _LaparaskopikUrunlerState();
}

class _LaparaskopikUrunlerState extends State<LaparaskopikUrunler> {
  int current = 0;
  CarouselController controller = CarouselController();
  final List _isHovering = [false, false, false, false, false, false, false];
  final List _isSelected = [true, false, false, false, false, false, false];
  Color color = const Color(0xff264796);

  List<String> images = [
    "assets/laparaskopi_image/clips.jpg",
    "assets/laparaskopi_image/endo_bag.jpg",
    "assets/laparaskopi_image/laparaskopik_disector.jpg",
    "assets/laparaskopi_image/laparaskopik_grasper.jpg",
    "assets/laparaskopi_image/laparaskopik_makas.jpg",
    "assets/laparaskopi_image/trocar.jpg",
  ];

  List<String> places = [
    "Polimer Klips",
    "Endo Bag",
    "Disektör",
    "Grasper",
    "Makas",
    "Trokar"
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              element,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(children: [
      CarouselSlider(
        items: imageSliders,
        options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 18 / 8,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                current = index;
                for (int i = 0; i < imageSliders.length; i++) {
                  if (i == index) {
                    _isSelected[i] = true;
                  } else {
                    _isSelected[i] = false;
                  }
                }
              });
            }),
        carouselController: controller,
      ),
      /*AspectRatio(
        aspectRatio: 18 / 8,
        child: Center(
          child: Text(
            places[current],
            style: GoogleFonts.electrolize(
              letterSpacing: 8,
              fontSize: screenSize.width / 25,
              color: color,
            ),
          ),
        ),
      ),*/
      AspectRatio(
          aspectRatio: 17 / 8,
          child: Center(
              heightFactor: 1,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: screenSize.width / 8,
                        right: screenSize.width / 8,
                      ),
                      child: Card(
                          elevation: 5,
                          child: Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.height / 50,
                                bottom: screenSize.height / 50,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (int i = 0; i < places.length; i++)
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          splashColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          onHover: (value) {
                                            setState(() {
                                              value
                                                  ? _isHovering[i] = true
                                                  : _isHovering[i] = false;
                                            });
                                          },
                                          onTap: () {
                                            controller.animateToPage(i);
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                                top: screenSize.height / 80,
                                                bottom: screenSize.height / 90),
                                            child: Text(
                                              places[i],
                                              style: TextStyle(
                                                color: _isHovering[i]
                                                    ? Colors.blueGrey[900]
                                                    : color,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Visibility(
                                          maintainSize: true,
                                          maintainAnimation: true,
                                          maintainState: true,
                                          visible: _isSelected[i],
                                          child: AnimatedOpacity(
                                            duration: const Duration(
                                                milliseconds: 400),
                                            opacity: _isSelected[i] ? 1 : 0,
                                            child: Container(
                                              height: 5,
                                              decoration: BoxDecoration(
                                                color: color,
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              width: screenSize.width / 10,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                ],
                              )))))))
    ]);
  }
}