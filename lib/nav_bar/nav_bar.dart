import 'package:denizhan_medikal_web/nav_bar/kaynaklar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../language_picker_widget.dart';
import '../language_widget.dart';
import 'hakkimizda_widget.dart';
import 'urunler_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class NavBar extends StatefulWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);


  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  OverlayState? overlayState;
  OverlayEntry? overlayEntry;
  OverlayEntry? overlayEntry2;
  bool showOverlay = false;
  int index = 0;
  List<Widget> widgets = const [
    HakkimizdaWidget(),
    UrunlerWidget(),
    KaynaklarWidget(),
  ];
  final layerLink = LayerLink();
  final textButtonFocusNode = FocusNode();
  final textButtonFocusNode1 = FocusNode();
  final textButtonFocusNode2 = FocusNode();
  final textButtonFocusNode3 = FocusNode();
  final textButtonFocusNode4 = FocusNode();
  void _showOverlay(BuildContext context, int index) async {
    overlayState = Overlay.of(context)!;
    overlayEntry = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            width: 20,
            height: 20,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  } else if(index == 2){
                    textButtonFocusNode2.requestFocus();
                  }

                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }
                  else if (index == 2) {
                    textButtonFocusNode2.unfocus();
                  }
                }
              },
              child: Container(
                  height: 40,
                  width: 60,
                  color: Colors.transparent
              ),
            ),
          );
        });
    overlayEntry2 = OverlayEntry(
        maintainState: true,
        builder: (context) {
          return Positioned(
            top: 110,
            child: TextButton(
              onPressed: () {},
              onHover: (val) {
                if (val && showOverlay) {
                  if (index == 0) {
                    textButtonFocusNode.requestFocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.requestFocus();
                  }else if (index == 2) {
                    textButtonFocusNode2.requestFocus();
                  }
                } else {
                  if (index == 0) {
                    textButtonFocusNode.unfocus();
                  } else if (index == 1) {
                    textButtonFocusNode1.unfocus();
                  }else if (index == 2) {
                    textButtonFocusNode2.unfocus();
                  }
                }
              },
              child: widgets[index],
            ),
          );
        });

    // overlayState!.insert(overlayEntry!);
    overlayState!.insertAll([overlayEntry!, overlayEntry2!]);
  }
  void removeOverlay() {
    overlayEntry!.remove();
    overlayEntry2!.remove();
  }
  @override
  void initState() {
    super.initState();
    textButtonFocusNode.addListener(() {
      if (textButtonFocusNode.hasFocus) {
        _showOverlay(context, 0);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode1.addListener(() {
      if (textButtonFocusNode1.hasFocus) {
        _showOverlay(context, 1);
      } else {
        removeOverlay();
      }
    });
    textButtonFocusNode2.addListener(() {
      if (textButtonFocusNode2.hasFocus) {
        _showOverlay(context, 2);
      } else {
        removeOverlay();
      }
    });
  }
  Color color = const Color(0xff264796);
  List isHoveringLogo = [false, false, false, false, false, false];
  List isHoveringMenu = [false, false, false, false, false];
  bool isMenuOpen = false;

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Padding(
              padding: const EdgeInsets.only(right: 35),
              child: Column(
                children: [
                  const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap:() {
                            final Uri emailLaunchUri = Uri(
                              scheme: 'mailto',
                              path: 'info@denizhanmedikal.com.tr',
                              query: encodeQueryParameters(<String, String>{
                               // 'subject': 'Example Subject & Symbols are allowed!',
                              }),
                            );
                            launchUrl(emailLaunchUri);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.mark_email_unread_outlined,
                                color: color,
                                size: 21,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "info@denizhanmedikal.com.tr",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 16,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_in_talk_outlined,
                              color: color,
                              size: 21,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "+90 322 227 50 36",
                              style: GoogleFonts.titilliumWeb(
                                fontSize: 16,
                                color: color,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("whatsapp://send?phone=+905493230310"))) {
                            await launchUrl(Uri.parse("whatsapp://send?phone=+905493230310"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch whatsapp://send?phone=+905493230310";
                          },
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.whatsapp,
                                color: color,
                                size: 21,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "+90 549 323 03 10",
                                style: GoogleFonts.titilliumWeb(
                                  fontSize: 16,
                                  color: color,
                                ),
                              )
                            ],
                          ),
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
                            size: 21,
                          ),
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("https://www.facebook.com/denizhan.medikal"))) {
                            await launchUrl(Uri.parse("https://www.facebook.com/denizhan.medikal"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch https://www.facebook.com/denizhan.medikal";
                          },
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
                            size: 21,
                          ),
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/"))) {
                            await launchUrl(Uri.parse("https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch https://www.linkedin.com/in/y%C3%BCcel-denizhan-b391a3100/";
                          },
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
                            size: 21,
                          ),
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("https://twitter.com/denizhanmedikal"))) {
                            await launchUrl(Uri.parse("https://twitter.com/denizhanmedikal"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch https://twitter.com/denizhanmedikal";
                          },
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
                            size: 21,
                          ),
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("https://www.instagram.com/denizhan_medikal/"))) {
                            await launchUrl(Uri.parse("https://www.instagram.com/denizhan_medikal/"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch https://www.instagram.com/denizhan_medikal/";
                          },
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
                            size: 21,
                          ),
                          onTap: () async {
                            if (await canLaunchUrl(Uri.parse("https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA"))) {
                            await launchUrl(Uri.parse("https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA"));
                            } else
                            // can't launch url, there is some error
                            throw "Could not launch https://www.youtube.com/channel/UCRqCeAUn7AXhbEiR51XldkA";
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ]),
                ],
              ),
            ),
          ),
          Container(
            color: color.withOpacity(0.3),
            width: screenSize.width,
            height: 1,
          ),
          Flexible(
            flex: 3,
            fit: FlexFit.tight,
            child: Row(
              children: [
                InkWell(
                  onTap: ((){
                    GoRouter.of(context).go('/');
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Image.asset(
                      "assets/images/logo.png",
                      width: 200,
                      height: 100,
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: (){
                          },
                          onHover: (value) {
                            setState(() {
                              isHoveringMenu[0] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                focusNode: textButtonFocusNode,
                              onHover: (val) {
                                  if (val) {
                                    textButtonFocusNode.requestFocus();
                                    showOverlay = true;
                                  }
                                },
                                onPressed: (){
                                  GoRouter.of(context).go('/hakkimizda');
                                },
                                child: Text(
                                    AppLocalizations.of(context)!.hakkimizda,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600 ,
                                      color: color),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHoveringMenu[0],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: (){
                            GoRouter.of(context).go('/urunler');
                          },
                          onHover: (value) {
                            setState(() {
                              isHoveringMenu[1] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                focusNode: textButtonFocusNode1,
                                onHover: (val) {
                                  if (val) {
                                    textButtonFocusNode1.requestFocus();
                                    showOverlay = true;
                                  }
                                },
                                onPressed: (){
                                  GoRouter.of(context).go('/urunler');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.urunler,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600 ,
                                      color: color),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHoveringMenu[1],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: (){
                          },
                          onHover: (value) {
                            setState(() {
                              isHoveringMenu[2] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                focusNode: textButtonFocusNode2,
                                onHover: (val) {
                                  if (val) {
                                    textButtonFocusNode2.requestFocus();
                                    showOverlay = true;
                                  }
                                },
                                onPressed: (){
                                  GoRouter.of(context).go('/kaynaklar');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.kaynaklar,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600 ,
                                      color: color),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHoveringMenu[2],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: (){
                          },
                          onHover: (value) {
                            setState(() {
                              isHoveringMenu[3] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                focusNode: textButtonFocusNode3,
                                onHover: (val) {
                                  if (val) {
                                    textButtonFocusNode3.requestFocus();
                                  }
                                },
                                onPressed: (){
                                  GoRouter.of(context).go('/haberler');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.haberler,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600 ,
                                      color: color),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHoveringMenu[3],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: screenSize.width / 20),
                        InkWell(
                          onTap: (){
                          },
                          onHover: (value) {
                            setState(() {
                              isHoveringMenu[4] = value;
                            });
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextButton(
                                focusNode: textButtonFocusNode4,
                                onHover: (val) {
                                  if (val) {
                                    textButtonFocusNode4.requestFocus();
                                  }
                                },
                                onPressed: () {
                                  GoRouter.of(context).go('/iletisim');
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.iletisim,
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight:FontWeight.w600 ,
                                      color: color),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Visibility(
                                maintainAnimation: true,
                                maintainState: true,
                                maintainSize: true,
                                visible: isHoveringMenu[4],
                                child: Container(
                                  height: 2,
                                  width: 30,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 150.0),
                  child: LanguagePickerWidget(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}




