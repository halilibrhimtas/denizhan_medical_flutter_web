import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'on_hover.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HakkimizdaWidget extends StatelessWidget {
  const HakkimizdaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height*0.17,
        width: MediaQuery.of(context).size.width*0.992,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OnHover(builder: (isHovered){
              final color = isHovered ? Colors.grey : const Color(0xff264796);
              return
                Row(
                  children: [
                    Image.asset("assets/hakkimizda/businessman.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go('/hakkimizda');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.ceo_mesaji,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ),
                  ],
                );
            }),
            OnHover(builder: (isHovered){
              final color = isHovered ? Colors.grey : const Color(0xff264796);
              return
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/hakkimizda/mission.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go('/hakkimizda');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.misyon,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ),
                  ],
                );
            }),
            OnHover(builder: (isHovered){
              final color = isHovered ? Colors.grey : const Color(0xff264796);
              return
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/hakkimizda/company.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go('/hakkimizda');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.sirket_hakkinda,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ),
                  ],
                );
            }),
            OnHover(builder: (isHovered){
              final color = isHovered ? Colors.grey : const Color(0xff264796);
              return
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/hakkimizda/vision.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).go('/hakkimizda');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.vizyon,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ),
                  ],
                );
            }),
          ],
        )
    );
  }
}