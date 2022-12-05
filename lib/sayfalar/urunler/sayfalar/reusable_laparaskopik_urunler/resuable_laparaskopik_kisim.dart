import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ReusableLaparaskopikKisim extends StatefulWidget {
  const ReusableLaparaskopikKisim({
    Key? key,
    required this.screenSize,
    required this.isHovering,
    required this.color,
  }) : super(key: key);

  final Size screenSize;
  final List isHovering;
  final Color color;

  @override
  State<ReusableLaparaskopikKisim> createState() => _ReusableLaparaskopikKisimState();
}

class _ReusableLaparaskopikKisimState extends State<ReusableLaparaskopikKisim> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: widget.screenSize.height*0.15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         OnHover(builder: (onHovered){
           return SizedBox(
               height: widget.screenSize.height*0.4,
               width: widget.screenSize.width*0.4,
               child: Image.asset("assets/urunler/urunler_anasayfa/reusable.png"));
         }),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              TextButton(
                child: Text(
                  AppLocalizations.of(context)!.reusable_laparaskopik_urunler,
                  style: GoogleFonts.lato(
                    letterSpacing: 8,
                    fontSize: widget.screenSize.height*0.05,
                    color: Colors.black,
                  ),
                ),
                onPressed: (){
                  GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler');
                },
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
          TextButton(
              onHover: (value){
                setState(() {
                  value ? widget.isHovering[0] = true :  widget.isHovering[0] = false;
                });
              },
              child: Text(
                " - ${AppLocalizations.of(context)!.reusable_claw_grasper}",
                style: GoogleFonts.lato(
                  color: widget.isHovering[0] ? widget.color : Colors.black54,
                  fontSize: 17,
                ),
              ),
              onPressed: (){
                GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler/reusable_claw_grasper');
              }
          ),
          TextButton(
              onHover: (value){
                setState(() {
                  value ? widget.isHovering[1] = true :  widget.isHovering[1] = false;
                });
              },
              child: Text(
                " - ${AppLocalizations.of(context)!.reusable_disektor}",
                style: GoogleFonts.lato(
                  color: widget.isHovering[1] ? widget.color : Colors.black54,
                  fontSize: 17,
                ),
              ),
              onPressed: (){
                GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler/reusable_dissector');

              }
          ),
          TextButton(
              onHover: (value){
                setState(() {
                  value ? widget.isHovering[2] = true :  widget.isHovering[2] = false;
                });
              },
              child: Text(
                " - ${AppLocalizations.of(context)!.reusable_grasper}",
                style: GoogleFonts.lato(
                  color: widget.isHovering[2] ? widget.color : Colors.black54,
                  fontSize: 17,
                ),
              ),
              onPressed: (){
                GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler/reusable_grasper');
              }
          ),
          TextButton(
              onHover: (value){
                setState(() {
                  value ? widget.isHovering[3] = true :  widget.isHovering[3] = false;
                });
              },
              child: Text(
                " - ${AppLocalizations.of(context)!.reusable_scissors}",
                style: GoogleFonts.lato(
                  color: widget.isHovering[3] ? widget.color : Colors.black54,
                  fontSize: 17,
                ),
              ),
              onPressed: (){
                GoRouter.of(context).go('/urunler/reusable_laparaskopik_urunler/reusable_scissors');
              }
          ),
              ]
          )
        ],
      ),
    );
  }
}
