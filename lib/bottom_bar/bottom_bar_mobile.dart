import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'bottom_bar_column.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";
import 'package:url_launcher/url_launcher.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomBarMobile extends StatefulWidget {
   BottomBarMobile({Key? key}) : super(key: key);

  @override
  State<BottomBarMobile> createState() => _BottomBarMobileState();

}

class _BottomBarMobileState extends State<BottomBarMobile> {
  List isHovering = [false, false, false, false, false];
  Color color = const Color(0xff264796);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.bizi_takip_edin,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onHover: (value){
                        setState(() {
                          value ? isHovering[0] = true :  isHovering[0] = false;
                        });
                      },
                      onTap: () async {
                        if (await canLaunchUrl(Uri.parse("https://www.facebook.com/denizhan.medikal"))) {
                        await launchUrl(Uri.parse("https://www.facebook.com/denizhan.medikal"));
                        } else
                        // can't launch url, there is some error
                        throw "Could not launch https://www.facebook.com/denizhan.medikal";
                      },
                      child: Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.facebook,
                            color: isHovering[0] ? Colors.blueGrey : Colors.white,
                            size: 11,
                          ),
                          const SizedBox(width: 5,),
                          Text(
                            "Facebook",
                            style: GoogleFonts.lato(
                              color: isHovering[0] ? Colors.blueGrey : Colors.white,
                              fontSize: 11,
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
                              size: 11,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "Instagram",
                              style: GoogleFonts.lato(
                                color: isHovering[1] ? Colors.blueGrey : Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://www.instagram.com/denizhan_medikal/"))) {
                          await launchUrl(Uri.parse("https://www.instagram.com/denizhan_medikal/"));
                          } else
                          // can't launch url, there is some error
                          throw "Could not launch https://www.instagram.com/denizhan_medikal/";
                        }
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
                              size: 11,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "Twitter",
                              style: GoogleFonts.lato(
                                color: isHovering[2] ? Colors.blueGrey : Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://twitter.com/denizhanmedikal"))) {
                          await launchUrl(Uri.parse("https://twitter.com/denizhanmedikal"));
                          } else
                          // can't launch url, there is some error
                          throw "Could not launch https://twitter.com/denizhanmedikal";
                        }
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
                              size: 11,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "Youtube",
                              style: GoogleFonts.lato(
                                color: isHovering[3] ? Colors.blueGrey : Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA"))) {
                          await launchUrl(Uri.parse("https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA"));
                          } else
                          // can't launch url, there is some error
                          throw "Could not launch https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA";
                        }
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
                              size: 11,
                            ),
                            const SizedBox(width: 5,),
                            Text(
                              "Linkedin",
                              style: GoogleFonts.lato(
                                color: isHovering[4] ? Colors.blueGrey : Colors.white,
                                fontSize: 11,
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          if (await canLaunchUrl(Uri.parse("https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/"))) {
                          await launchUrl(Uri.parse("https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/"));
                          } else
                          // can't launch url, there is some error
                          throw "Could not launch https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/";
                        }
                    ),
                    const SizedBox(height: 5),
                  ],
                ),

              ],
            ),
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
