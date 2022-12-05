import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class HakkimizdaMenu extends StatefulWidget {
  const HakkimizdaMenu({Key? key}) : super(key: key);

  @override
  State<HakkimizdaMenu> createState() => _HakkimizdaMenuState();
}

class _HakkimizdaMenuState extends State<HakkimizdaMenu> {
  List isHovering = [false, false, false, false, false];
  Color color = const Color(0xff264796);
  List<String> pages = ["/hakkimizda/kurucumuzun_mesaji","/hakkimizda/sirket_hakkında","/hakkimizda/misyon","/hakkimizda/vizyon"];

  PageController pageController = PageController();
  int selectedIndex = 0;

  void onTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    GoRouter.of(context).go(pages[index]);
  }
  @override
  Widget build(BuildContext context) {
    List<String> hakkimizdaMenu = [AppLocalizations.of(context)!.ceo_mesaji, AppLocalizations.of(context)!.sirket_hakkinda,AppLocalizations.of(context)!.misyon,AppLocalizations.of(context)!.vizyon];
    var screenSize = MediaQuery.of(context).size;
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: const EdgeInsets.only(top: 75),
        child: Container(
          color: Colors.white54,
          width: screenSize.width * 0.15,
          height: screenSize.height * 0.7,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: ListView.builder(
              itemCount: hakkimizdaMenu.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.arrow_forward_ios_rounded),
                  title: Text(
                    hakkimizdaMenu[index],
                    style: GoogleFonts.lato(
                      letterSpacing: 2,
                      fontSize: screenSize.width / 110,
                      color: Colors.black,
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
    );
  }
}
class Icerik extends StatelessWidget {
  const Icerik({
    Key? key,
    required this.screenSize,
    required this.text,
    required this.controller
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize.height * 0.5,
      width: screenSize.width * 0.70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.40,
            width: screenSize.width * 0.30,
            child: Image.asset(
              "assets/images/medical.png",
            ),
          ),
          const SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              width: screenSize.width * 0.30,
              height: screenSize.height * 0.35,
              child: SelectableText(
                text,
                style: GoogleFonts.lato(
                  letterSpacing: 2,
                  fontSize: screenSize.width / 110,
                  color: Colors.black,
                ),
                maxLines: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
