import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisposableLaparaskopikKisim extends StatefulWidget {
  const DisposableLaparaskopikKisim({
    Key? key,
    required this.screenSize,
    required this.isHovering,
    required this.color,
  }) : super(key: key);

  final Size screenSize;
  final List isHovering;
  final Color color;

  @override
  State<DisposableLaparaskopikKisim> createState() => _DisposableLaparaskopikKisimState();
}

class _DisposableLaparaskopikKisimState extends State<DisposableLaparaskopikKisim> {
  List<String> routes = [
    '/urunler/disposable_laparaskopik_urunler/disposable_grasper',
    '/urunler/disposable_laparaskopik_urunler/disposable_clinch',
    '/urunler/disposable_laparaskopik_urunler/disposable_dissector',
    '/urunler/disposable_laparaskopik_urunler/disposable_scissors',
    '/urunler/disposable_laparaskopik_urunler/disposable_trokar',
    '/urunler/disposable_laparaskopik_urunler/disposable_bipolar_forceps',
    '/urunler/disposable_laparaskopik_urunler/disposable_claw_grasper',
    '/urunler/disposable_laparaskopik_urunler/disposable_clips',
    '/urunler/disposable_laparaskopik_urunler/disposable_endo_bag',
    '/urunler/disposable_laparaskopik_urunler/disposable_suction',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: widget.screenSize.height*0.15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  TextButton(
                    child: Text(
                      AppLocalizations.of(context)!.disposable_laparaskopik_urunler,
                      style: GoogleFonts.lato(
                        letterSpacing: 8,
                        fontSize: widget.screenSize.height*0.05,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: (){
                      GoRouter.of(context).go('/urunler/disposable_laparaskopik_urunler');
                    },
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                ],
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[0] = true :  widget.isHovering[0] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_grasper}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[0] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_clinch}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[1] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_disektor}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[2] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_scissors}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[3] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_trokar}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[4] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_bipolar_forceps}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[5] ? widget.color : Colors.black54,
                      fontSize: 17,
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
                    " - ${AppLocalizations.of(context)!.disposable_claw_grasper}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[6] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[6]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[7] = true :  widget.isHovering[7] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_polymer_clips}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[7] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[7]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[8] = true :  widget.isHovering[8] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_endo_bag}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[8] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[8]);
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[9] = true :  widget.isHovering[9] = false;
                    });
                  },
                  child: Text(
                    " - ${AppLocalizations.of(context)!.disposable_suction}",
                    style: GoogleFonts.lato(
                      color: widget.isHovering[9] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go(routes[9]);
                  }
              )
            ],
          ),
          OnHover(builder: (onHoverd){
            return SizedBox(
                height: widget.screenSize.height*0.4,
                width: widget.screenSize.width*0.4,
                child: Image.asset("assets/urunler/urunler_foto.png"));
          })
        ],
      ),
    );
  }
}
