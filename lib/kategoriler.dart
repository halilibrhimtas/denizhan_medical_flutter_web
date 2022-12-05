import 'package:denizhan_medikal_web/responsive.dart';
import 'package:denizhan_medikal_web/urunler/disposable_laparaskopik_urunler.dart';
import 'package:denizhan_medikal_web/urunler/plasma_cihaz%C4%B1.dart';
import 'package:denizhan_medikal_web/urunler/reusable_laparaskopik_urunler.dart';
import 'package:denizhan_medikal_web/urunler/stapler.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:carousel_slider/carousel_slider.dart';
import "package:google_fonts/google_fonts.dart";
// ignore: depend_on_referenced_packages
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'urunler/baslica_urunler.dart';



class Kategoriler extends StatefulWidget {
  const Kategoriler({super.key});

  @override
  State<Kategoriler> createState() => _KategorilerState();
}

class _KategorilerState extends State<Kategoriler> {
  List isHovering = [false, false, false, false];
  Color color = const Color(0xff264796);
  final List _isSelected = [true, false, false, false];
  CarouselController controller = CarouselController();
  List<Widget> kategori = const [BaslicaUrunler()];
  List<Widget> generateKategoriTiles(screenSize) {
    return kategori
        .map(
          (element) => element
        )
        .toList();
  }
  int current = 0;

  
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var kategoriSliders = generateKategoriTiles(screenSize);
   return ResponsiveWidget.isSmallScreen(context) ?
   CarouselSlider(
     items: kategoriSliders,
     options: CarouselOptions(
         aspectRatio: 18 / 20,
         enlargeCenterPage: true,
         viewportFraction: 0.9,
         autoPlayInterval: const Duration(seconds: 15),
         onPageChanged: (index, reason) {
           setState(() {
             current = index;
             for (int i = 0; i < kategoriSliders.length; i++) {
               if (i == index) {
                 _isSelected[i] = true;
               } else {
                 _isSelected[i] = false;
               }
             }
           });
         }),
     carouselController: controller,
   )
       :
      //   CarouselSlider(
      //     items: kategoriSliders,
      //     options: CarouselOptions(
      //       aspectRatio: 18 / 8,
      //       enlargeCenterPage: true,
      //       viewportFraction: 0.9,
      //       autoPlayInterval: const Duration(seconds: 15),
      //       onPageChanged: (index, reason) {
      //         setState(() {
      //           current = index;
      //           for (int i = 0; i < kategoriSliders.length; i++) {
      //             if (i == index) {
      //               _isSelected[i] = true;
      //             } else {
      //               _isSelected[i] = false;
      //             }
      //           }
      //         });
      //       }),
      //   carouselController: controller,
      // ),
    BaslicaUrunler();
  }
}