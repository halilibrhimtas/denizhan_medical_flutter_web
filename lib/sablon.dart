import 'package:denizhan_medikal_web/home/home_screen.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class Sablon extends StatefulWidget {
  const Sablon({super.key, required this.screenSize});
  final Size screenSize;


  @override
  State<Sablon> createState() => _SablonState();
}

class _SablonState extends State<Sablon> {
  Color color = const Color(0xff264796);
  List isHoveringLogo = [false, false, false, false, false, false];
  String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.screenSize.height * 4.5 / 100,
          width: widget.screenSize.width,
          color: Colors.white,
          child: Row(
              children: [
            SizedBox(
              width: widget.screenSize.width * 50 / 100,
            ),
            InkWell(
              onTap:() {
                final Uri emailLaunchUri = Uri(
                  scheme: 'mailto',
                  path: 'info@denizhanmedikal.com.tr',
                  query: encodeQueryParameters(<String, String>{
                    'subject': 'Example Subject & Symbols are allowed!',
                    }),
                    );
                  launchUrl(emailLaunchUri);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.mark_email_unread_outlined,
                    color: color,
                    size: widget.screenSize.height * 3 / 100,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "info@denizhanmedikal.com.tr",
                    style: GoogleFonts.lato(
                      fontSize: widget.screenSize.height * 2 / 100,
                      color: color,
                    ),
                  )
                ],
              ),
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
                      fontSize: widget.screenSize.height * 2 / 100,
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
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[0] = true :  isHoveringLogo[0] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.facebook,
                color: isHoveringLogo[0] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[1] = true : isHoveringLogo[1] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.linkedin,
                color: isHoveringLogo[1] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[2] = true : isHoveringLogo[2] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: isHoveringLogo[2] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[3] = true : isHoveringLogo[3] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.twitter,
                color: isHoveringLogo[3] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[4] = true :  isHoveringLogo[4] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.instagram,
                color: isHoveringLogo[4] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            ),
            const SizedBox(
              width: 10,
            ),
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHoveringLogo[5] = true :  isHoveringLogo[5] = false;
                  });
                  },
              child: FaIcon(
                FontAwesomeIcons.youtube,
                color: isHoveringLogo[5] ? Colors.blue : color,
                size: widget.screenSize.height * 3 / 100,
              ),
              onTap: () {},
            )
          ]),
        ),
        Container(
           color: Colors.transparent,
           child: Padding(
             padding: const EdgeInsets.only(left: 50.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 InkWell(
                   onTap: (() {
                     Navigator.of(context).pushNamed(HomeScreen.route);
                   }),
                   child: Image.asset(
                     "assets/images/logo.png",
                     width: 200,
                     height: 100,
                   ),
                 ),
               ],
             ),
           ),
         ),
      ],
    );
  }
}