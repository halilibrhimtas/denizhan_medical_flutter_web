import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class PlasmaCihazi extends StatefulWidget {
  const PlasmaCihazi({super.key});

  @override
  State<PlasmaCihazi> createState() => _PlasmaCihaziState();
}

class _PlasmaCihaziState extends State<PlasmaCihazi> {
  int current = 0;
  CarouselController controller = CarouselController();
  final List _isSelected = [true, false];
  List<String> images = [
    "assets/plasma_kinetik/plasma_kinetik_cihazi.jpg",
    "assets/plasma_kinetik/loop.jpg",
    ];

  Color color = const Color(0xff264796);


  List<String> routes = [
    '/urunler/plasma_kinetik/plasma_kinetik_cihazi',
    '/urunler/plasma_kinetik/bipolar_loop',
  ];

  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: InkWell(
              onTap: (){
                GoRouter.of(context).go(routes[current]);
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: Image.asset(
                          element,
                          fit: BoxFit.cover,
                        ).image
                  )
                ),
                width: 350,
                height: 350,
                ),
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
  });
}

  @override
  Widget build(BuildContext context) {
    List<String> places = [
      AppLocalizations.of(context)!.plasma_kinetik_cihazi,
      AppLocalizations.of(context)!.bipolar_loop,
    ];
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Center(
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 25)),
          Text(
            AppLocalizations.of(context)!.plasma_kinetik,
              style: GoogleFonts.lato(
                letterSpacing: 8,
                fontSize: 25,
                color: color,
              ),
            ),
            Divider(
              color: color,
              ),
            const Padding(padding: EdgeInsets.only(top: 25)),

           CarouselSlider(
            items: imageSliders,
            options: CarouselOptions(
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                viewportFraction: 0.22,
                aspectRatio: 18/8,
                height: screenSize.height*45/100,
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
            const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: indicators(images.length,current)),
                ],
      ),
    );
  }
}
