import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'on_hover.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UrunlerWidget extends StatelessWidget {
  const UrunlerWidget({
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
            InkWell(
              onTap: (){
                GoRouter.of(context).go('/urunler/cerrahi_stapler');
              },
              child: OnHover(builder: (isHovered){
                final color = isHovered ? Colors.grey : const Color(0xff264796);
                return
                  Row(
                    children: [
                      Image.asset("assets/urunler/stapler.png", height: MediaQuery.of(context).size.height * 5/ 100, width: MediaQuery.of(context).size.width * 5/ 100),
                      const SizedBox(width: 5,),
                      Text(
                        AppLocalizations.of(context)!.cerrahi_stapler,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ],
                  );
              }
              ),
            ),
            InkWell(
              onTap: (){
                GoRouter.of(context).go('/urunler/disposable_laparaskopik_urunler');
              },
              child: OnHover(builder: (isHovered){
                final color = isHovered ? Colors.grey : const Color(0xff264796);
                return
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/urunler/laparaskopi.png", height: MediaQuery.of(context).size.height * 5/ 100, width: MediaQuery.of(context).size.width * 5/ 100),
                      const SizedBox(width: 5,),
                      Text(
                        AppLocalizations.of(context)!.disposable_laparaskopik_urunler,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ],
                  );
              }),
            ),
            InkWell(
              onTap: (){
                GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler');
              },
              child: OnHover(builder: (isHovered){
                final color = isHovered ? Colors.grey : const Color(0xff264796);
                return
                  Row(
                    children: [
                      Image.asset("assets/urunler/laparaskopi.png", height: MediaQuery.of(context).size.height * 5/ 100, width: MediaQuery.of(context).size.width * 5/ 100),
                      const SizedBox(width: 5,),
                      Text(
                        AppLocalizations.of(context)!.reusable_laparaskopik_urunler,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lato(
                            fontSize: MediaQuery.of(context).size.height * 1.9/ 100,
                            fontWeight:FontWeight.w600 ,
                            color: color),
                      ),
                    ],
                  );
              }
              ),
            ),
            InkWell(
              onTap: (){
                GoRouter.of(context).go('/urunler/plasma_kinetik');
              },
              child: OnHover(builder: (isHovered){
                final color = isHovered ? Colors.grey : const Color(0xff264796);
                return
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/urunler/plasma.png", height: MediaQuery.of(context).size.height * 5/ 100, width: MediaQuery.of(context).size.width * 5/ 100),
                      const SizedBox(width: 5,),
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).go('/urunler/plasma_kinetik');
                        },
                        child: Text(
                          AppLocalizations.of(context)!.plasma_kinetik,
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
            ),
          ],
        )
    );
  }
}