import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PlasmaKinetikKisim extends StatefulWidget {
  const PlasmaKinetikKisim({
    Key? key,
    required this.screenSize,
    required this.isHovering,
    required this.color,
  }) : super(key: key);

  final Size screenSize;
  final List isHovering;
  final Color color;

  @override
  State<PlasmaKinetikKisim> createState() => _PlasmaKinetikKisimState();
}

class _PlasmaKinetikKisimState extends State<PlasmaKinetikKisim> {
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
                      AppLocalizations.of(context)!.plasma_kinetik,
                      style: GoogleFonts.lato(
                        letterSpacing: 8,
                        fontSize: widget.screenSize.height*0.05,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: (){
                      GoRouter.of(context).go('/urunler/plasma_kinetik');
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
                    AppLocalizations.of(context)!.plasma_kinetik_cihazi,
                    style: GoogleFonts.lato(
                      color: widget.isHovering[0] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go('/urunler/plasma_kinetik/plasma_kinetik_cihazi');
                  }
              ),
              TextButton(
                  onHover: (value){
                    setState(() {
                      value ? widget.isHovering[1] = true :  widget.isHovering[1] = false;
                    });
                  },
                  child: Text(
                    AppLocalizations.of(context)!.bipolar_loop,
                    style: GoogleFonts.lato(
                      color: widget.isHovering[1] ? widget.color : Colors.black54,
                      fontSize: 17,
                    ),
                  ),
                  onPressed: (){
                    GoRouter.of(context).go('/urunler/plasma_kinetik/bipolar_loop');
                  }
              ),
            ],
          ),
          OnHover(builder: (onHovered){
            return SizedBox(
                height: widget.screenSize.height*0.4,
                width: widget.screenSize.width*0.4,
                child: Image.asset("assets/plasma_kinetik/plasma_kinetik_cihazi.jpg"));
          })
        ],
      ),
    );
  }
}
