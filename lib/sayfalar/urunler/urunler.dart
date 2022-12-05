import 'package:denizhan_medikal_web/sayfalar/baslik.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../bottom_bar/bottom_bar_mobile.dart';
import '../../language_picker_widget.dart';
import '../../nav_bar/nav_bar.dart';
import '../../nav_bar/nav_bar_drawer.dart';
import '../../nav_bar/on_hover.dart';
import '../../responsive.dart';
import '../../set_page_title.dart';
import "package:google_fonts/google_fonts.dart";
import 'sayfalar/cerrahi_stapler/cerrahi_stapler_kisim.dart';
import 'sayfalar/cerrahi_stapler/cerrahi_stapler_kisim_mobile.dart';
import 'sayfalar/disposable_laparaskopik_urunler/disposable_laparaskopik_kisim.dart';
import 'sayfalar/disposable_laparaskopik_urunler/disposable_laparoskopik_kisim_mobile.dart';
import 'sayfalar/plasma_kinetik/plasma_kinetik_kisim.dart';
import 'sayfalar/reusable_laparaskopik_urunler/resuable_laparaskopik_kisim.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Urunler extends StatefulWidget {
  const Urunler({super.key});
  static const String route = '/urunler';


  @override
  State<Urunler> createState() => _UrunlerState();
}

class _UrunlerState extends State<Urunler> {
  Color color = const Color(0xff264796);
  List isHovering = [false,false,false,false,false, false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    setPageTitle("${AppLocalizations.of(context)!.urunler} | Denizhan Medikal", context);
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
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
      drawer: NavBarDrawer(),
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
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 5, bottom: 5)),
                ResponsiveWidget.isSmallScreen(context) ? Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60.0),
                    child: Container(
                      color: color,
                      height: screenSize.height*0.9,
                      width: screenSize.width*0.85,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Center(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(bottom: 12),
                                      child: Text(
                                        AppLocalizations.of(context)!.urunler,
                                        style: GoogleFonts.merriweather(
                                            letterSpacing: 2,
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      color: color,
                                      width: 50,
                                      height: 2,
                                    ),
                                  ],
                                )
                            ),
                            Center(
                              child: SizedBox(
                                height: screenSize.height * 0.35,
                                width: screenSize.width * 0.75,
                                child: Image.asset(
                                  "assets/urunler/urunler_foto.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: Container(
                                width: screenSize.width * 0.7,
                                padding: const EdgeInsets.all(5),
                                child: Column(
                                  children: [
                                    Text(
                                      AppLocalizations.of(context)!.urun_tanitim,
                                      style: GoogleFonts.lato(
                                        letterSpacing: 1,
                                        fontSize: 15,
                                        color: Colors.white,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                    ),
                  ),
                ): Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: screenSize.width*0.02),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          color: color,
                          height: screenSize.height*0.75,
                          width: screenSize.width*0.85,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: screenSize.height * 0.045, left: screenSize.width * 0.055),
                        child: OnHover(builder: (bool isHovered) {
                          return SizedBox(
                            height: screenSize.height * 0.65,
                            width: screenSize.width * 0.45,
                            child: Image.asset(
                              "assets/urunler/urunler_foto.png",
                            ),
                          );
                        },)
                      ),
                    ),
                    const SizedBox(width: 30),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: screenSize.height*0.05, right: screenSize.width*0.1),
                        child: Container(
                          width: screenSize.width * 0.35,
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Baslik(text: AppLocalizations.of(context)!.urunler, color: Colors.white,),
                              Text(
                                AppLocalizations.of(context)!.urun_tanitim,
                                style: GoogleFonts.lato(
                                  letterSpacing: 3,
                                  fontSize: 20,
                                  wordSpacing: 1,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ResponsiveWidget.isSmallScreen(context) ? CerrahiStaplerKisimMobile(screenSize: screenSize, isHovering: isHovering, color: color):CerrahiStaplerKisim(screenSize: screenSize, isHovering: isHovering, color: color),
                ResponsiveWidget.isSmallScreen(context) ?  DisposableLaparaskopikKisimMobile(screenSize: screenSize, isHovering: isHovering, color: color):DisposableLaparaskopikKisim(screenSize: screenSize, isHovering: isHovering, color: color),
                ReusableLaparaskopikKisim(screenSize: screenSize, isHovering: isHovering, color: color),
                PlasmaKinetikKisim(screenSize: screenSize, isHovering: isHovering, color: color),
                const SizedBox(height: 80),
                ResponsiveWidget.isSmallScreen(context) ? BottomBarMobile() : BottomBar(),
              ],
            ),
          ),
        ),
      ),

    );
  }
}


