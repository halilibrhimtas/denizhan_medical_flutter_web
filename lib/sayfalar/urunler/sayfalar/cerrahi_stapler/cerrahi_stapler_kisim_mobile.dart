import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CerrahiStaplerKisimMobile extends StatefulWidget {
  const CerrahiStaplerKisimMobile({
    Key? key,
    required this.screenSize,
    required this.isHovering,
    required this.color,
  }) : super(key: key);

  final Size screenSize;
  final List isHovering;
  final Color color;

  @override
  State<CerrahiStaplerKisimMobile> createState() => _CerrahiStaplerKisimMobileState();
}

class _CerrahiStaplerKisimMobileState extends State<CerrahiStaplerKisimMobile> {
  List<String> routes = [
    '/urunler/cerrahi_stapler/skin_stapler',
    '/urunler/cerrahi_stapler/disposable_circular_stapler',
    '/urunler/cerrahi_stapler/disposable_hemorrhoidal_stapler',
    '/urunler/cerrahi_stapler/disposable_linear_cutter',
    '/urunler/cerrahi_stapler/endo_cutter',
    '/urunler/cerrahi_stapler/reusable_circular_stapler',
    '/urunler/cerrahi_stapler/reusable_hemorrhoidal_stapler',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: widget.screenSize.height*0.15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OnHover(
            builder: (bool isHovered) {
              return SizedBox(
                  height: widget.screenSize.height*0.4,
                  width: widget.screenSize.width*0.4,
                  child: Image.asset("assets/stapler/skin_stapler/img.png"));
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  TextButton(
                    child: Text(
                      AppLocalizations.of(context)!.cerrahi_stapler,
                      style: GoogleFonts.lato(
                        letterSpacing: 5,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () async {
                      GoRouter.of(context).go('/urunler/cerrahi_stapler');
                    },
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
                ],
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[0] = true :  widget.isHovering[0] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.deri_zimbasi}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[0] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[0]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[1] = true :  widget.isHovering[1] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_circular_stapler}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[1] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[1]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[2] = true :  widget.isHovering[2] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_hemorhoidal_stapler}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[2] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[2]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[3] = true :  widget.isHovering[3] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_lineer_cutter}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[3] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[3]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[4] = true :  widget.isHovering[4] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_endo_cutter}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[4] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[4]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[5] = true :  widget.isHovering[5] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.reusable_circular_stapler}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[5] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[5]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[6] = true :  widget.isHovering[6] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.reusable_hemorhoidal_stapler}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[6] ? widget.color : Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[6]);
                  }
              )
            ],
          )
        ],
      ),
    );
  }
}