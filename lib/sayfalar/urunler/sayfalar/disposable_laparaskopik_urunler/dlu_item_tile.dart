import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DluItemTile extends StatefulWidget {
  final int index;
  final Size screenSize;

  const DluItemTile(
      this.index,
      this.screenSize, {super.key}
      );

  @override
  State<DluItemTile> createState() => _DluItemTileState();
}

class _DluItemTileState extends State<DluItemTile> {
  double? width;
  double? height;
  Color? color;
  bool? animate;
  bool? textAppear;
  @override
  void initState() {
    animate = false;
    textAppear = false;
    showInfoPlayer(animate!);
    super.initState();
  }
  void showInfoPlayer(bool animate) {
    setState(() {
      if (animate) {
        height = widget.screenSize.height*0.35;
        width = widget.screenSize.width*0.3;
        color = Color(0xff264796);

        Future.delayed(const Duration(milliseconds: 110), () {
          setState(() {
            textAppear = true;
          });
        });
      } else {
        height = widget.screenSize.height*0.3;
        width = widget.screenSize.width*0.2;
        color = Color(0xff264796);
      }
    });
  }

  List<String> images = [
    "assets/disposable_laparaskopi/grasper/grasper1.png",
    "assets/disposable_laparaskopi/clinch/clinch2.png",
    "assets/disposable_laparaskopi/dissector/dissector.png",
    "assets/disposable_laparaskopi/makas.jpeg",
    "assets/disposable_laparaskopi/trocar/trocar2.png",
    "assets/disposable_laparaskopi/bipolar_forceps/bipolar_forceps.jpeg",
    "assets/disposable_laparaskopi/claw_grasper.jpeg",
    "assets/disposable_laparaskopi/polimer_clips/clips1.png",
    "assets/disposable_laparaskopi/endo_bag/endo_bag.jpg",
    "assets/disposable_laparaskopi/suction/suction.jpeg",
  ];


  @override
  Widget build(BuildContext context) {
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
    List<String> ozellikler = [
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
      AppLocalizations.of(context)!.icerik_hazirlanmaktadir,
    ];
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: MouseRegion(
            onEnter: (a) {
              setState(() {
                animate = true;
                showInfoPlayer(animate!);
              });
            },
            onExit: (a) {
              animate = false;
              showInfoPlayer(animate!);
              textAppear = false;
            },
            child: Container(
              color: Color(0xff264796),
              width: widget.screenSize.width*0.35,
              height: widget.screenSize.height*0.5,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedContainer(
                      height: height,
                      width: width,
                      duration: const Duration(milliseconds: 180),
                      padding: EdgeInsets.only(left: widget.screenSize.width*0.02, top: widget.screenSize.height*0.02),
                      color: color,
                      child: AnimatedOpacity(
                        opacity: textAppear! ? 1 : 0,
                        duration: Duration(milliseconds: textAppear! ? 100 : 100),
                        curve: Curves.easeOut,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: widget.screenSize.width*0.1,
                              child: Text(
                                ozellikler[widget.index],
                                style: GoogleFonts.merriweather(
                                  fontSize: widget.screenSize.height*0.017,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    padding: EdgeInsets.only(left: animate! ? widget.screenSize.width*0.13 : 0, top: animate! ? widget.screenSize.height*0.07 : 10),
                    duration: const Duration(milliseconds: 180),
                    height: widget.screenSize.height*0.35,
                    width:widget.screenSize.width*0.45,
                    child: Container(
                      color: Colors.white,
                      child: Image(
                        width: widget.screenSize.width*0.4,
                        image:  AssetImage(images[widget.index]),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedOpacity(
                      opacity: textAppear! ? 0 : 1,
                      duration: Duration(milliseconds: textAppear! ? 100 : 100),
                      child: Container(
                        width: width,
                        color: const Color(0xFFF5F5F5).withOpacity(0.7),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text(
                                places[widget.index],
                                style: GoogleFonts.merriweather(
                                  fontSize: widget.screenSize.height*0.022,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}