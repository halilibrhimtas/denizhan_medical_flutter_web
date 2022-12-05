import 'package:flutter/material.dart';
import 'bottom_bar_column.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Color color = const Color(0xff264796);
  List isHovering = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: AppLocalizations.of(context)!.cerrahi_stapler,
                s1: AppLocalizations.of(context)!.deri_zimbasi,
                s2: AppLocalizations.of(context)!.disposable_lineer_cutter,
                s3: AppLocalizations.of(context)!.disposable_circular_stapler,
                s4: AppLocalizations.of(context)!.disposable_endo_cutter,
                s5: AppLocalizations.of(context)!.disposable_hemorhoidal_stapler,
                s6: AppLocalizations.of(context)!.reusable_circular_stapler,
                s7: AppLocalizations.of(context)!.reusable_hemorhoidal_stapler,
                s8: " ",
                s9:  " ",
                s10: " ",
              ),
              BottomBarColumn(
                heading: AppLocalizations.of(context)!.disposable_laparaskopik_urunler,
                s1: AppLocalizations.of(context)!.disposable_bipolar_forceps,
                s2: AppLocalizations.of(context)!.disposable_claw_grasper,
                s3: AppLocalizations.of(context)!.disposable_clinch,
                s4: AppLocalizations.of(context)!.disposable_polymer_clips,
                s5: AppLocalizations.of(context)!.disposable_disektor,
                s6: AppLocalizations.of(context)!.disposable_endo_bag,
                s7: AppLocalizations.of(context)!.disposable_grasper,
                s8: AppLocalizations.of(context)!.disposable_scissors,
                s9: AppLocalizations.of(context)!.disposable_suction,
                s10: AppLocalizations.of(context)!.disposable_trokar,
              ),
              BottomBarColumn(
                heading: AppLocalizations.of(context)!.plasma_kinetik,
                s1: AppLocalizations.of(context)!.plasma_kinetik_cihazi,
                s2: AppLocalizations.of(context)!.bipolar_loop,
                s3: " ",
                s4: " ",
                s5: " ",
                s6: " ",
                s7: " ",
                s8: " ",
                s9:  " ",
                s10: " ",
              ),
              BottomBarColumn(
                heading: AppLocalizations.of(context)!.menu,
                s1: AppLocalizations.of(context)!.hakkimizda,
                s2: AppLocalizations.of(context)!.urunler,
                s3: AppLocalizations.of(context)!.kaynaklar,
                s4: AppLocalizations.of(context)!.haberler,
                s5: AppLocalizations.of(context)!.iletisim,
                s6: " ",
                s7: " ",
                s8: " ",
                s9: " ",
                s10: " ",
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.bizi_takip_edin,
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
              height: 10,
            ),
              InkWell(
                onHover: (value){
                setState(() {
                value ? isHovering[0] = true :  isHovering[0] = false;
                });
              },
              onTap: () {},
                child: Row(
                  children: [
                     FaIcon(
                        FontAwesomeIcons.facebook,
                        color: isHovering[0] ? Colors.blueGrey : Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 5,),
                    Text(
                      "Facebook",
                      style: GoogleFonts.lato(
                        color: isHovering[0] ? Colors.blueGrey : Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),

              ),
            const SizedBox(height: 5),
            InkWell(
              onHover: (value){
                setState(() {
                value ? isHovering[1] = true :  isHovering[1] = false;
                });
              },
                child: Row(
                  children: [
                     FaIcon(
                        FontAwesomeIcons.instagram,
                        color: isHovering[1] ? Colors.blueGrey : Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 5,),
                    Text(
                      "Instagram",
                      style: GoogleFonts.lato(
                        color: isHovering[1] ? Colors.blueGrey : Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onTap: (){}
              ),
            const SizedBox(height: 5),
            InkWell(
              onHover: (value){
                setState(() {
                value ? isHovering[2] = true :  isHovering[2] = false;
                });
              },
                child: Row(
                  children: [
                     FaIcon(
                        FontAwesomeIcons.twitter,
                        color: isHovering[2] ? Colors.blueGrey : Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 5,),
                    Text(
                      "Twitter",
                      style: GoogleFonts.lato(
                        color: isHovering[2] ? Colors.blueGrey : Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onTap: (){}
              ),
            const SizedBox(height: 5),
            InkWell(
              onHover: (value){
                setState(() {
                value ? isHovering[3] = true :  isHovering[3] = false;
                });
              },
                child: Row(
                  children: [
                     FaIcon(
                        FontAwesomeIcons.youtube,
                        color: isHovering[3] ? Colors.blueGrey : Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 5,),
                    Text(
                      "Youtube",
                      style: GoogleFonts.lato(
                        color: isHovering[3] ? Colors.blueGrey : Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onTap: (){}
              ),
            const SizedBox(height: 5),
            InkWell(
              onHover: (value){
                setState(() {
                value ? isHovering[4] = true :  isHovering[4] = false;
                });
              },
                child: Row(
                  children: [
                     FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: isHovering[4] ? Colors.blueGrey : Colors.white,
                        size: 17,
                      ),
                      const SizedBox(width: 5,),
                    Text(
                      "Linkedin",
                      style: GoogleFonts.lato(
                        color: isHovering[4] ? Colors.blueGrey : Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                onTap: (){}
              ),
            const SizedBox(height: 5),

              Text(
                " ",
                style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
                    const SizedBox(height: 5),

                    Text(
                      " ",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),

                    Text(
                      " ",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 5),

                    Text(
                      " ",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 3),

                    Text(
                      " ",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
          ],
        ),
      )

              ],
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Copyright © 2022 | All rights reserved. | Created by ',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  onTap: () async {
                    if (await canLaunchUrl(Uri.parse("https://www.linkedin.com/in/halilibrhimtas"))) {
                    await launchUrl(Uri.parse("https://www.linkedin.com/in/halilibrhimtas"));
                    } else
                    // can't launch url, there is some error
                    throw "Could not launch https://www.linkedin.com/in/halilibrhimtas";
                  },
                  child: Text(
                    'Halil Ibrahim Tas.',
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
