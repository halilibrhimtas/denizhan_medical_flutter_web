import 'package:denizhan_medikal_web/sayfalar/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import '../../../../bottom_bar/bottom_bar.dart';
import '../../../../nav_bar/nav_bar.dart';
import '../../../../nav_bar/on_hover.dart';
import '../../../../set_page_title.dart';
import "package:google_fonts/google_fonts.dart";
import 'rlu_item_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class ReusableLaparaskopikUrunler extends StatefulWidget {
  const ReusableLaparaskopikUrunler({super.key});
  static const String route = '/urunler/disposable_laparaskopik_urunler';


  @override
  State<ReusableLaparaskopikUrunler> createState() => _ReusableLaparaskopikUrunlerState();
}

class _ReusableLaparaskopikUrunlerState extends State<ReusableLaparaskopikUrunler> {
  Color color = const Color(0xff264796);
  List isHovering = [false,false,false,false,false, false, false, false, false, false];
  int selectedIndex = 0;

  List<String> routes = [
    '/urunler/reusable_laparaskopik_urunler/reusable_claw_grasper',
    '/urunler/reusable_laparaskopik_urunler/reusable_dissector',
    '/urunler/reusable_laparaskopik_urunler/reusable_grasper',
    '/urunler/reusable_laparaskopik_urunler/reusable_scissors',
  ];

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

  }

  @override
  Widget build(BuildContext context) {
    List<String> places = [
      AppLocalizations.of(context)!.reusable_claw_grasper,
      AppLocalizations.of(context)!.reusable_disektor,
      AppLocalizations.of(context)!.reusable_grasper,
      AppLocalizations.of(context)!.reusable_scissors,
    ];
    setPageTitle(" ${AppLocalizations.of(context)!.urunler}| Denizhan Medikal", context);
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
              Padding(
                padding: EdgeInsets.only(top: screenSize.height*0.1),
                child: Container(
                  width: screenSize.width*0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SelectableText.rich(
                             TextSpan(
                                text: AppLocalizations.of(context)!.reusable_laparaskopik_urunler
                            ),
                            style: GoogleFonts.merriweather(
                                letterSpacing: 2,
                                fontSize: screenSize.width*0.017,
                                color: color,
                              fontWeight: FontWeight.w200,
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
                        child: Container(
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
                                          child: RluItemTile(index, screenSize)
                                      );
                                    }
                                );
                              })
                          ),
                        ),
                      ),
                    ],
                  ),
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


