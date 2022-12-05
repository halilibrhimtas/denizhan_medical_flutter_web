import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ReusableLaparaskopik extends StatefulWidget {
  const ReusableLaparaskopik({super.key});

  @override
  State<ReusableLaparaskopik> createState() => _ReusableLaparaskopikState();
}

class _ReusableLaparaskopikState extends State<ReusableLaparaskopik> {
  int current = 0;
  CarouselController controller = CarouselController();
  final List _isSelected = [true, false, false, false, false, false];
  List<String> images = [
    "assets/reusable_laparaskopi/claw_grasper.jpeg",
    "assets/reusable_laparaskopi/dissector.jpg",
    "assets/reusable_laparaskopi/grasper.jpg",
    "assets/reusable_laparaskopi/makas.jpeg",
  ];

  Color color = const Color(0xff264796);
  List<Widget> generateImageTiles(screenSize) {
    return images
        .map(
          (element) => ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
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
      AppLocalizations.of(context)!.reusable_claw_grasper,
      AppLocalizations.of(context)!.reusable_disektor,
      AppLocalizations.of(context)!.reusable_grasper,
      AppLocalizations.of(context)!.disposable_scissors,
    ];
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 25)),
            Text(
              AppLocalizations.of(context)!.reusable_laparaskopik_urunler,
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
                      child:  Text("<-",
                      style: GoogleFonts.lato(
                        letterSpacing: 8,
                        fontSize: screenSize.width / 90,
                        color: color,
                        ),
                        )
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
                      child:  Text("->",
                      style: GoogleFonts.lato(
                        letterSpacing: 8,
                        fontSize: screenSize.width / 90,
                        color: color,
                        ),
                        )
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
      ),
    );
  }
}
