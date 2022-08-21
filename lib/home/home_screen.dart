import 'package:denizhan_medikal_web/bottom_bar.dart';
import 'package:denizhan_medikal_web/laparaskopik_baslik.dart';
import 'package:denizhan_medikal_web/body.dart';
import 'package:denizhan_medikal_web/stapler_baslik.dart';
import 'package:denizhan_medikal_web/stapler_urunler.dart';
import 'package:flutter/material.dart';
import '../laparaskopik_urunler.dart';
// ignore: depend_on_referenced_packages
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color color = const Color(0xff264796);
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Column(
          children: [
            Container(
              height: screenSize.height * 4.5 / 100,
              width: screenSize.width,
              color: Colors.white,
              child: Row(children: [
                SizedBox(
                  width: screenSize.width * 50 / 100,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.mark_email_unread_outlined,
                        color: color,
                        size: screenSize.height * 3 / 100,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "info@denizhanmedikal.com.tr",
                        style: GoogleFonts.lato(
                          fontSize: screenSize.height * 2 / 100,
                          color: color,
                        ),
                      )
                    ],
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
                InkWell(
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_in_talk_outlined,
                        color: color,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "+90 322 227 50 36",
                        style: GoogleFonts.lato(
                          fontSize: screenSize.height * 2 / 100,
                          color: color,
                        ),
                      )
                    ],
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 30,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.linkedin,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.whatsapp,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.twitter,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.instagram,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  child: FaIcon(
                    FontAwesomeIcons.youtube,
                    color: color,
                    size: screenSize.height * 3 / 100,
                  ),
                  onTap: () {},
                )
              ]),
            ),
            Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  const Padding(padding: EdgeInsets.only(left: 50)),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 200,
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: screenSize.height * 0.55,
                  width: screenSize.width,
                  child: Image.asset("assets/images/background.png",
                      fit: BoxFit.cover),
                ),
                const Body(),
              ],
            ),
            LaparaskopiBaslik(screenSize: screenSize),
            const LaparaskopikUrunler(),
            const SizedBox(
              height: 30,
            ),
            StaplerBaslik(
              screenSize: screenSize,
            ),
            const StaplerUrunler(),
            const SizedBox(
              height: 30,
            ),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
