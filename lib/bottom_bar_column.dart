import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

// ignore: must_be_immutable
class BottomBarColumn extends StatelessWidget {
  final String heading;
  String? s1;
  String? s2;
  String? s3;
  String? s4;
  String? s5;
  String? s6;

  BottomBarColumn({
    super.key,
    required this.heading,
    this.s1,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (s1 != null)
            Text(
              s1!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 5),
          if (s2 != null)
            Text(
              s2!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 5),
          if (s3 != null)
            Text(
              s3!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 5),
          if (s4 != null)
            Text(
              s4!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 5),
          if (s5 != null)
            Text(
              s5!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          const SizedBox(height: 5),
          if (s6 != null)
            Text(
              s6!,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
        ],
      ),
    );
  }
}
