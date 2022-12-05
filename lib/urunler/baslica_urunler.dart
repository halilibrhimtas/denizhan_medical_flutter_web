import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../responsive.dart';


class BaslicaUrunler extends StatefulWidget {
  const BaslicaUrunler({super.key});

  @override
  State<BaslicaUrunler> createState() => _BaslicaUrunlerState();
}

class _BaslicaUrunlerState extends State<BaslicaUrunler> {
  int current = 0;
  CarouselController controller = CarouselController();
  final List _isSelected = [true, false, false, false, false, false, false,false];
  List<String> images = [
    "assets/stapler/skin_stapler/skin_stapler.png",
    "assets/4alet.png",
    "assets/disposable_laparaskopi/trocar/trocar2.png",
    "assets/disposable_laparaskopi/polimer_clips/clips1.png",
    "assets/disposable_laparaskopi/suction/suction.jpeg",
    "assets/portegu.png"
  ];
  Color color = const Color(0xff264796);
  List<String> routes = [
    '/urunler/cerrahi_stapler/skin_stapler',
    '/urunler/disposable_laparaskopik_urunler',
    '/urunler/disposable_laparaskopik_urunler/disposable_trokar',
    '/urunler/disposable_laparaskopik_urunler/disposable_clips',
    '/urunler/disposable_laparaskopik_urunler/disposable_suction',
    '/urunler/reusable_laparaskopik_urunler/needle_holder'
  ];
  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: OnHover(
            builder: (bool hovering) {
              return InkWell(
                onTap: (){
                  GoRouter.of(context).go(routes[current]);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: Image.asset(
                            element,
                            fit: current == 5 ? BoxFit.fill: BoxFit.fill,
                            width: 350,
                            height: 350,
                          ).image
                      )
                  ),
                  width: 400,
                  height: 400,
                ),
              );
            }
        ),
      ),
    )
        .toList();
  }

  List<Widget> indicators(imagesLength,currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.blue : color,
            shape: BoxShape.circle),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> places = [
      AppLocalizations.of(context)!.deri_zimbasi,
      AppLocalizations.of(context)!.disposable_laparaskopik_urunler,
      AppLocalizations.of(context)!.disposable_trokar,
      AppLocalizations.of(context)!.disposable_polymer_clips,
      AppLocalizations.of(context)!.disposable_suction,
      "Needle Holder"
    ];
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 25)),
          Text(
            AppLocalizations.of(context)!.baslica_urunler,
            style: GoogleFonts.titilliumWeb(
              letterSpacing: 8,
              fontSize: 25,
              color: color,
            ),
          ),
          Divider(
            color: color,
          ),
          const Padding(padding: EdgeInsets.only(top: 25)),
          ResponsiveWidget.isSmallScreen(context) ? CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enlargeCenterPage: true,
                aspectRatio: 18/8,
                viewportFraction: 0.5,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    current = index;
                  });
                }),
            carouselController: controller,
          ) : CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 0.4,
                aspectRatio: 18/12,
                height: screenSize.height*55/100,
                pageSnapping: true,
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
          ResponsiveWidget.isSmallScreen(context) ? AspectRatio(
            aspectRatio: 18 / 2,
            child: Center(
              child: Text(
                places[current],
                style: GoogleFonts.titilliumWeb(
                  letterSpacing: 3,
                  fontSize: 21,
                  color: color,
                ),
              ),
            ),
          ) : AspectRatio(
            aspectRatio: 18/2,
            child: Center(
              child: Text(
                places[current],
                style: GoogleFonts.titilliumWeb(
                  letterSpacing: 3,
                  fontSize: 23,
                  color: color,
                ),
              ),
            ),
          ),
          ResponsiveWidget.isSmallScreen(context) ? Container() : Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => controller.previousPage(
                        duration: const Duration(milliseconds: 300), curve: Curves.linear),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: color)
                            )
                        )
                    ),
                    child:  Icon(Icons.arrow_back_ios_new, color: color, size: screenSize.width / 90,)
                ),
                const Padding(padding: EdgeInsets.only(right: 10)),
                ElevatedButton(
                    onPressed: () => controller.nextPage(
                        duration: const Duration(milliseconds: 300), curve: Curves.linear),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: color)
                            )
                        )
                    ),
                    child:  Icon(Icons.arrow_forward_ios_rounded, color: color, size: screenSize.width / 90,)
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: indicators(images.length,current)),
        ],
      ),
    );
  }
}
