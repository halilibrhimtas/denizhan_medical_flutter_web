import 'package:denizhan_medikal_web/responsive.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class LaparaskopiBaslik extends StatefulWidget {
  const LaparaskopiBaslik({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  State<LaparaskopiBaslik> createState() => _LaparaskopiBaslikState();
}

class _LaparaskopiBaslikState extends State<LaparaskopiBaslik> {
  Color color = const Color(0xff264796);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: widget.screenSize.height / 20,
              bottom: widget.screenSize.height / 20,
            ),
            width: widget.screenSize.width,
            // color: Colors.black,
            child: Text(
              'Laparaskopik Aletler',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: widget.screenSize.height / 10,
              bottom: widget.screenSize.height / 15,
            ),
            width: widget.screenSize.width,
            child: Text(
              'Laparaskopik Aletler',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          );
  }
}
