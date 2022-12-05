import 'package:denizhan_medikal_web/sayfalar/hakkimizda/hakkimizda_menu/misyon.dart';
import 'package:denizhan_medikal_web/sayfalar/hakkimizda/hakkimizda_menu/sirket_hakkinda.dart';
import 'package:denizhan_medikal_web/sayfalar/hakkimizda/hakkimizda_menu/vizyon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:google_fonts/google_fonts.dart";
import '../../bottom_bar/bottom_bar.dart';
import '../../nav_bar/nav_bar.dart';
import '../../set_page_title.dart';
import '../background.dart';
import '../baslik.dart';
import 'hakkimizda_menu/kurucumuzun_mesaji.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Hakkimizda extends StatefulWidget {
  const Hakkimizda({super.key});
  static const String route = '/hakkimizda';


  @override
  State<Hakkimizda> createState() => _HakkimizdaState();
}

class _HakkimizdaState extends State<Hakkimizda> {
    Color color = const Color(0xff264796);
    PageController pageController = PageController();
    int selectedIndex = 0;
    List<String> pages = ["/hakkimizda/kurucumuzun_mesaji","/hakkimizda/sirket_hakkında","/hakkimizda/misyon","/hakkimizda/vizyon"];
    List<Widget> sayfalar = [KurucumuzunMesaji(), SirketHakkinda(), Misyon(),Vizyon()];

    void onTapped(int index) {
      setState(() {
        selectedIndex = index;
      });
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    }
    @override
    Widget build(BuildContext context) {
      List<String> hakkimizdaMenu = [AppLocalizations.of(context)!.ceo_mesaji, AppLocalizations.of(context)!.sirket_hakkinda,AppLocalizations.of(context)!.misyon,AppLocalizations.of(context)!.vizyon];
      var screenSize = MediaQuery
          .of(context)
          .size;
      setPageTitle("${AppLocalizations.of(context)!.hakkimizda} | Denizhan Medikal", context);
      return Scaffold(
        extendBodyBehindAppBar: true,
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
                    Background(screenSize: screenSize, text: AppLocalizations.of(context)!.hakkimizda),
                    Row(
                      children: [
                        SizedBox(
                          width: screenSize.width*0.2,
                          height: screenSize.height,
                          child: Center(
                            heightFactor: 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 45),
                              child: Container(
                                color: Colors.white54,
                                width: screenSize.width * 0.15,
                                height: screenSize.height * 0.7,
                                child: Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: hakkimizdaMenu.length,
                                      itemBuilder: (BuildContext context, int index) {
                                        return ListTile(
                                          leading:  Icon(Icons.arrow_forward_ios_rounded, color: color,),
                                          title: Text(
                                            hakkimizdaMenu[index],
                                            style: GoogleFonts.lato(
                                              letterSpacing: 2,
                                              fontSize: screenSize.width / 110,
                                              color: color,
                                            ),
                                          ),
                                          onTap: (){
                                            onTapped(index);
                                          },
                                        );
                                      },
                                    )
                                ),
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(thickness: 2, width: 2,color: color,),
                         Expanded(
                           child: Column(
                                children: [
                                  Baslik(text: hakkimizdaMenu[selectedIndex], color: color,),
                                  sayfalar[selectedIndex]
                                    ],
                                  ),
                         ),
                            ]
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






