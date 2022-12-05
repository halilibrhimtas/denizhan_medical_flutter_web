import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import '../../../../bottom_bar/bottom_bar.dart';
import '../../../../nav_bar/nav_bar.dart';
import '../../../../nav_bar/on_hover.dart';
import '../../../../set_page_title.dart';
import "package:google_fonts/google_fonts.dart";
import '../../../background.dart';
import 'dlu_item_tile.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class DisposableLaparaskopikUrunler extends StatefulWidget {
  const DisposableLaparaskopikUrunler({super.key});
  static const String route = '/urunler/disposable_laparaskopik_urunler';


  @override
  State<DisposableLaparaskopikUrunler> createState() => _DisposableLaparaskopikUrunlerState();
}

class _DisposableLaparaskopikUrunlerState extends State<DisposableLaparaskopikUrunler> {
  Color color = const Color(0xff264796);
  List isHovering = [false,false,false,false,false, false, false, false, false, false];
  int selectedIndex = 0;


  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });

  }
  List<String> routes = [
    '/urunler/disposable_laparaskopik_urunler/disposable_grasper',
    '/urunler/disposable_laparaskopik_urunler/disposable_clinch',
    '/urunler/disposable_laparaskopik_urunler/disposable_dissector',
    '/urunler/disposable_laparaskopik_urunler/disposable_scissors',
    '/urunler/disposable_laparaskopik_urunler/disposable_trokar',
    '/urunler/disposable_laparaskopik_urunler/disposable_bipolar_forceps',
    '/urunler/disposable_laparaskopik_urunler/disposable_claw_grasper',
    '/urunler/disposable_laparaskopik_urunler/disposable_clips',
    '/urunler/disposable_laparaskopik_urunler/disposable_endo_bag',
    '/urunler/disposable_laparaskopik_urunler/disposable_suction',
  ];

  @override
  Widget build(BuildContext context) {
    setPageTitle("${AppLocalizations.of(context)!.urunler}| Denizhan Medikal", context);
    var screenSize = MediaQuery.of(context).size;
    List<String> places = [
      AppLocalizations.of(context)!.disposable_grasper,
      AppLocalizations.of(context)!.disposable_clinch,
      AppLocalizations.of(context)!.disposable_disektor,
      AppLocalizations.of(context)!.disposable_scissors,
      AppLocalizations.of(context)!.disposable_trokar,
      AppLocalizations.of(context)!.disposable_bipolar_forceps,
      AppLocalizations.of(context)!.disposable_claw_grasper,
      AppLocalizations.of(context)!.disposable_polymer_clips,
      AppLocalizations.of(context)!.disposable_endo_bag,
      AppLocalizations.of(context)!.disposable_suction,
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
                                text: AppLocalizations.of(context)!.disposable_laparaskopik_urunler
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
                                          child: DluItemTile(index, screenSize)
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


