import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Baslik extends StatefulWidget {
  const Baslik({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;


  @override
  State<Baslik> createState() => _BaslikState();
}

class _BaslikState extends State<Baslik> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        const Padding(padding: EdgeInsets.only(top: 40)),
        Text(
          widget.text,
          style: GoogleFonts.merriweather(
            letterSpacing: 2,
            fontSize: screenSize.width*0.017,
            color: widget.color,
            fontWeight: FontWeight.w700
          ),
          textAlign: TextAlign.center,
        ),
        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
        Container(
          color: widget.color,
          width: 100,
          height: 2,
        ),
        const Padding(padding: EdgeInsets.only(top: 25)),
      ],
    );
  }
}