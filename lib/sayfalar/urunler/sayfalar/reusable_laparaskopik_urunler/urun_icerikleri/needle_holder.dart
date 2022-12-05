import 'package:denizhan_medikal_web/bottom_bar/bottom_bar.dart';
import 'package:denizhan_medikal_web/nav_bar/nav_bar.dart';
import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:denizhan_medikal_web/sayfalar/background.dart';
import 'package:denizhan_medikal_web/set_page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class NeedleHolder extends StatefulWidget {
  const NeedleHolder({super.key});
  static const String route = '/urunler/reusable_laparaskopik_urunler/reusable_scissors';


  @override
  State<NeedleHolder> createState() => _NeedleHolderState();
}

class _NeedleHolderState extends State<NeedleHolder> {
  Color color = const Color(0xff264796);
  int currentIndex = 0;
  List<bool> onTapped = [true, false, false];
  List<String> images = [
    "assets/portegu.png",
  ];

  // void onTapped(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    setPageTitle("${AppLocalizations.of(context)!.urunler} | Denizhan Medikal", context);
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 110),
          child: const NavBar()
      ),
      body: SingleChildScrollView(
        child:
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/arka_plan.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 15)),
              Background(screenSize: screenSize, text: AppLocalizations.of(context)!.urunler),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        OnHover(
                            builder: (bool hovered) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: screenSize.height*0.07),
                                child: Container(
                                  color: Colors.white,
                                  height: screenSize.height*0.40,
                                  width: screenSize.width*0.38,
                                  child: Image(
                                    image: AssetImage(images[currentIndex]),
                                    fit: BoxFit.contain,
                                  ) ,
                                ),
                              );
                            }
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.black12,
                            width: screenSize.width*0.45,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height*0.15,
                          width: screenSize.width*0.45,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: images.length,
                              itemBuilder:(BuildContext context, int index){
                                return InkWell(
                                  onTap: (){
                                    setState(() {
                                      currentIndex = index;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 3,
                                          color: Colors.white
                                      ),
                                    ),
                                    height: screenSize.height*0.15,
                                    width: screenSize.width*0.15,
                                    child: Image(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.contain,
                                    ) ,
                                  ),
                                );
                              }
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Needle Holder",
                          style: GoogleFonts.merriweather(
                              letterSpacing: 2,
                              fontSize: screenSize.width*0.017,
                              color: color,
                              fontWeight: FontWeight.w200
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                        Container(
                          color: color,
                          width: 100,
                          height: 2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 80),
              const BottomBar(),
            ],
          ),
        ),
      ),

    );
  }
}


