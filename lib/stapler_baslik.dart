import 'package:denizhan_medikal_web/responsive.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class StaplerBaslik extends StatelessWidget {
  const StaplerBaslik({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 20,
              bottom: screenSize.height / 20,
            ),
            width: screenSize.width,
            // color: Colors.black,
            child: Text(
              'Disposable Stapler',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 10,
              bottom: screenSize.height / 15,
            ),
            width: screenSize.width,
            // color: Colors.black,
            child: Text(
              'Disposable Stapler',
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87),
            ),
          );
  }
}
