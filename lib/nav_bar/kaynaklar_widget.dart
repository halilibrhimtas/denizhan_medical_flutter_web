import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:google_fonts/google_fonts.dart";
import 'on_hover.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class KaynaklarWidget extends StatelessWidget {
  const KaynaklarWidget({
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
                    Image.asset("assets/kaynaklar/download.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    Text(
                      AppLocalizations.of(context)!.dokuman,
                      textAlign: TextAlign.start,style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                          fontWeight:FontWeight.w600 ,
                          color: color),
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
                    Image.asset("assets/kaynaklar/video.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    Text(
                      AppLocalizations.of(context)!.video,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                          fontWeight:FontWeight.w600 ,
                          color: color),
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
                    Image.asset("assets/kaynaklar/blog.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    Text(
                      AppLocalizations.of(context)!.blog,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                          fontWeight:FontWeight.w600 ,
                          color: color),
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
                    Image.asset("assets/kaynaklar/faq.png", height: MediaQuery.of(context).size.height * 4.5/ 100, width: MediaQuery.of(context).size.width * 4.5/ 100),
                    const SizedBox(width: 5,),
                    Text(
                      AppLocalizations.of(context)!.sss,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                          fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                          fontWeight:FontWeight.w600 ,
                          color: color),
                    ),
                  ],
                );
            }),
          ],
        )
    );
  }
}