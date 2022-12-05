import 'package:denizhan_medikal_web/bottom_bar/bottom_bar.dart';
import 'package:denizhan_medikal_web/nav_bar/nav_bar.dart';
import 'package:denizhan_medikal_web/sayfalar/background.dart';
import 'package:denizhan_medikal_web/set_page_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../bottom_bar/bottom_bar_mobile.dart';
import '../../../../../language_picker_widget.dart';
import '../../../../../nav_bar/on_hover.dart';
import '../../../../../responsive.dart';



class SkinStaplerPage extends StatefulWidget {
  const SkinStaplerPage({super.key});
  static const String route = '/urunler/cerrahi_stapler/skin_stapler';


  @override
  State<SkinStaplerPage> createState() => _SkinStaplerPageState();
}

class _SkinStaplerPageState extends State<SkinStaplerPage> {
  Color color = const Color(0xff264796);
  List isHovering = [false,false,false,false,false, false, false, false, false, false];
  int currentIndex = 0;
  List<String> images = [
    "assets/stapler/skin_stapler/skin_stapler.png",
    "assets/stapler/skin_stapler/img.png",
    "assets/stapler/skin_stapler/img_2.png",
  ];

  @override
  Widget build(BuildContext context) {
    setPageTitle("${AppLocalizations.of(context)!.urunler} | Denizhan Medikal", context);
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: ResponsiveWidget.isSmallScreen(context) ? AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: LanguagePickerWidget(),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon:  Icon(
                Icons.menu,
                color: color,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),// for smaller screen sizes
        backgroundColor: Colors.white,
        elevation: 0,
        title:
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Image.asset(
            "assets/images/logo.png",
            width: 200,
            height: 100,
          ),
        ),
      ) : PreferredSize(
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
              ResponsiveWidget.isSmallScreen(context) ? Container() :  Background(screenSize: screenSize, text: AppLocalizations.of(context)!.urunler),
              Center(
                child: ResponsiveWidget.isSmallScreen(context) ? Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.deri_zimbasi,
                            style: GoogleFonts.merriweather(
                                letterSpacing: 2,
                                fontSize: 25,
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
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        OnHover(
                            builder: (bool hovered) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: screenSize.height*0.07),
                                child: Container(
                                  color: Colors.white,
                                  height: screenSize.height*0.6,
                                  width: screenSize.width*0.7,
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
                            width: screenSize.width*0.7,
                            height: 2,
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height*0.15,
                          width: screenSize.width*0.85,
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
                                    height: screenSize.height*0.25,
                                    width: screenSize.width*0.25,
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
                  ],
                ) : Row(
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
                                  height: screenSize.height*0.45,
                                  width: screenSize.width*0.45,
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
                          AppLocalizations.of(context)!.deri_zimbasi,
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
              ResponsiveWidget.isSmallScreen(context) ? BottomBarMobile() : BottomBar(),
            ],
          ),
        ),
      ),

    );
  }
}


