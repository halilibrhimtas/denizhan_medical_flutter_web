import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class StaplerUrunler extends StatefulWidget {
  const StaplerUrunler({super.key});

  @override
  State<StaplerUrunler> createState() => _StaplerUrunlerState();
}

class _StaplerUrunlerState extends State<StaplerUrunler> {
  int current = 0;
  CarouselController controller = CarouselController();
  final List _isSelected = [true, false, false, false, false, false, false];
  List<String> images = [
    "assets/stapler/skin_stapler/skin_stapler.png",
    "assets/stapler/disposable_circular_stapler/dis_circ_stapler.png",
    "assets/stapler/disposable_hemorrhoidal_stapler/disposable_hemorrhoidal_stapler.jpeg",
    "assets/stapler/linear_cutter/disposable_linear_cutter.jpeg",
    "assets/stapler/endo_cutter/endocutter.jpeg",
    "assets/stapler/reusable_circular_stapler/reusable_circular_stapler.jpeg",
    "assets/stapler/reusable_hemorrhoidal_stapler/reusable_hemorrhoidal_stapler.png",
  ];
  Color color = const Color(0xff264796);
  List<String> routes = [
    '/urunler/cerrahi_stapler/skin_stapler',
    '/urunler/cerrahi_stapler/disposable_circular_stapler',
    '/urunler/cerrahi_stapler/disposable_hemorrhoidal_stapler',
    '/urunler/cerrahi_stapler/disposable_linear_cutter',
    '/urunler/cerrahi_stapler/endo_cutter',
    '/urunler/cerrahi_stapler/reusable_circular_stapler',
    '/urunler/cerrahi_stapler/reusable_hemorrhoidal_stapler',
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
                              fit: BoxFit.fill,
                          width: 300,
                          height: 300,
                            ).image
                      )
                    ),
                    width: 350,
                    height: 350,
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
      AppLocalizations.of(context)!.disposable_circular_stapler,
      AppLocalizations.of(context)!.disposable_hemorhoidal_stapler,
      AppLocalizations.of(context)!.disposable_lineer_cutter,
      AppLocalizations.of(context)!.disposable_endo_cutter,
      AppLocalizations.of(context)!.reusable_circular_stapler,
      AppLocalizations.of(context)!.reusable_hemorhoidal_stapler,
    ];
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 25)),
          Text(
            AppLocalizations.of(context)!.cerrahi_stapler,
              style: GoogleFonts.lato(
                letterSpacing: 8,
                fontSize: 25,
                color: color,
              ),
            ),
            Divider(
              color: color,
              ),
            const Padding(padding: EdgeInsets.only(top: 30)),
           Container(
             height: screenSize.height*0.5,
             color: Colors.transparent,
             child: CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 0.22,
                  aspectRatio: 18/8,
                  height: screenSize.height*0.45,
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
           ),
          AspectRatio(
            aspectRatio: 18/2,
            child: Center(
            child: Text(
              places[current],
              style: GoogleFonts.lato(
                letterSpacing: 8,
                fontSize: screenSize.width / 90,
                color: color,
              ),
            ),
          ),
            ),
            Center(
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
                      child:   Icon(Icons.arrow_back_ios_new, color: color, size: screenSize.width / 90,)
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
            const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length,current)),
                ],
      ),
    );
  }
}
