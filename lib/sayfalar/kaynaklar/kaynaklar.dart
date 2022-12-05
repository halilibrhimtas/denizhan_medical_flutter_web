import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../nav_bar/nav_bar.dart';
import '../../set_page_title.dart';
import '../background.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
class Kaynaklar extends StatefulWidget {
  const Kaynaklar({super.key});
  static const String route = '/kaynaklar';



  @override
  State<Kaynaklar> createState() => _KaynaklarState();
}

class _KaynaklarState extends State<Kaynaklar> {
    

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    setPageTitle("${AppLocalizations.of(context)!.kaynaklar} | Denizhan Medikal", context);
    Color color = const Color(0xff264796);


    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 110),
          child: const NavBar()
      ),
      body: SingleChildScrollView(
        child:
        Column(
          children: [
            Background(screenSize: screenSize, text: AppLocalizations.of(context)!.kaynaklar),
            Padding(
              padding:  EdgeInsets.only(top: screenSize.height*0.2),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
                  style: GoogleFonts.merriweather(
                      letterSpacing: 2,
                      fontSize: screenSize.width*0.017,
                      color: color,
                      fontWeight: FontWeight.w700
                  ),
                  textAlign: TextAlign.center,
                ),
                ),
            ),
            const SizedBox(height: 80),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}