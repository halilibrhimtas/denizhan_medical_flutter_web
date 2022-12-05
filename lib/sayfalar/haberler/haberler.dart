import 'package:flutter/material.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../nav_bar/nav_bar.dart';
import '../../set_page_title.dart';
import '../background.dart';
import 'haberler_list.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class Haberler extends StatefulWidget {
  const Haberler({super.key});
  static const String route = '/haberler';
  @override
  State<Haberler> createState() => _HaberlerState();
}

class _HaberlerState extends State<Haberler> {
    

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    setPageTitle("${AppLocalizations.of(context)!.haberler} | Denizhan Medikal", context);
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
              Background(screenSize: screenSize, text: AppLocalizations.of(context)!.haberler,),
              HaberlerList(),
              const SizedBox(height: 80),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}