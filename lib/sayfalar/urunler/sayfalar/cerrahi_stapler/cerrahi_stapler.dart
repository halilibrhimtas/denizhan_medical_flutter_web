import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import '../../../../bottom_bar/bottom_bar.dart';
import '../../../../nav_bar/nav_bar.dart';
import '../../../../nav_bar/on_hover.dart';
import '../../../../set_page_title.dart';
import "package:google_fonts/google_fonts.dart";
import '../../../background.dart';
import 'cerrahi_stapler_item_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class CerrahiStapler extends StatefulWidget {
  const CerrahiStapler({super.key});
  static const String route = '/urunler/cerrahi_stapler';


  @override
  State<CerrahiStapler> createState() => _CerrahiStaplerState();
}

class _CerrahiStaplerState extends State<CerrahiStapler> {
  Color color = const Color(0xff264796);
  List isHovering = [false,false,false,false,false, false, false, false, false, false];
  int selectedIndex = 0;
  List<String> images = [
    "assets/stapler/skin_stapler/skin_stapler.png",
    "assets/stapler/disposable_circular_stapler/disposable_circular_stapler2.png",
    "assets/stapler/disposable_hemorrhoidal_stapler/disposable_hemorrhoidal_stapler.jpeg",
    "assets/stapler/linear_cutter/disposable_linear_cutter.jpeg",
    "assets/stapler/endo_cutter/endocutter.jpeg",
    "assets/stapler/reusable_circular_stapler/reusable_circular_stapler.jpeg",
    "assets/stapler/reusable_hemorrhoidal_stapler/reusable_hemorrhoidal_stapler.jpeg",
  ];



 List<String> routes = [
   '/urunler/cerrahi_stapler/skin_stapler',
   '/urunler/cerrahi_stapler/disposable_circular_stapler',
   '/urunler/cerrahi_stapler/disposable_hemorrhoidal_stapler',
   '/urunler/cerrahi_stapler/disposable_linear_cutter',
   '/urunler/cerrahi_stapler/endo_cutter',
   '/urunler/cerrahi_stapler/reusable_circular_stapler',
   '/urunler/cerrahi_stapler/reusable_hemorrhoidal_stapler',
 ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    setPageTitle("${AppLocalizations.of(context)!.urunler} | Denizhan Medikal", context);
    var screenSize = MediaQuery.of(context).size;
    List<String> places = [
      AppLocalizations.of(context)!.deri_zimbasi,
      AppLocalizations.of(context)!.disposable_circular_stapler,
      AppLocalizations.of(context)!.disposable_hemorhoidal_stapler,
      AppLocalizations.of(context)!.disposable_lineer_cutter,
      AppLocalizations.of(context)!.disposable_endo_cutter,
      AppLocalizations.of(context)!.reusable_circular_stapler,
      AppLocalizations.of(context)!.reusable_hemorhoidal_stapler,
    ];
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenSize.height*0.1),
                    child: Container(
                      width: screenSize.width*0.9,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SelectableText.rich(
                                 TextSpan(
                                    text: AppLocalizations.of(context)!.cerrahi_stapler_urunlerimiz
                                ),
                                style: GoogleFonts.merriweather(
                                    letterSpacing: 2,
                                    fontSize: screenSize.width*0.017,
                                    color: color,
                                    fontWeight: FontWeight.w200
                                ),
                              ),
                              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                              Container(
                                color: Colors.black12,
                                width: 120,
                                height: 2,
                              ),
                            ],
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: screenSize.height*0.1),
                            child: GridView.count(
                                crossAxisCount: 3,
                                crossAxisSpacing: screenSize.width*0.03,
                                shrinkWrap: true,
                                children: List.generate(places.length, (index) {
                                  return OnHover(
                                      builder: (bool isHovered) {
                                        return InkWell(
                                            onTap: (){
                                              GoRouter.of(context).go(routes[index]);
                                            },
                                            child: CsItemTile(index, screenSize)
                                        );
                                      }
                                  );
                                })
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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


