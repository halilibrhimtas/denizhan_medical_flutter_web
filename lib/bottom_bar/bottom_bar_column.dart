import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import "package:google_fonts/google_fonts.dart";

// ignore: must_be_immutable
class BottomBarColumn extends StatefulWidget {
  final String heading;
  String? s1;
  String? s2;
  String? s3;
  String? s4;
  String? s5;
  String? s6;
  String? s7;
  String? s8;
  String? s9;
  String? s10;
  String? s11;
  BottomBarColumn({
    super.key,
    required this.heading,
    this.s1,
    this.s2,
    this.s3,
    this.s4,
    this.s5,
    this.s6,
    this.s7,
    this.s8,
    this.s9,
    this.s10,
    this.s11,
  });

  @override
  State<BottomBarColumn> createState() => _BottomBarColumnState();
}

class _BottomBarColumnState extends State<BottomBarColumn> {
  List isHovering = [false, false, false, false, false, false, false, false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.heading,
            style: GoogleFonts.lato(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (widget.s1 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[0] = true :  isHovering[0] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s1!,
                style: GoogleFonts.lato(
                  color: isHovering[0] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s2 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[1] = true :  isHovering[1] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s2!,
                style: GoogleFonts.lato(
                  color: isHovering[1] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s3 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[2] = true :  isHovering[2] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s3!,
                style: GoogleFonts.lato(
                  color: isHovering[2] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s4 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[3] = true :  isHovering[3] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s4!,
                style: GoogleFonts.lato(
                  color: isHovering[3] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s5 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[4] = true :  isHovering[4] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s5!,
                style: GoogleFonts.lato(
                  color: isHovering[4] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s6 != null)
            InkWell(
              onHover: (value){
              setState(() {
              value ? isHovering[5] = true :  isHovering[5] = false;
              });
            },
            onTap: () {},
              child: Text(
                widget.s6!,
                style: GoogleFonts.lato(
                  color: isHovering[5] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s7 != null)
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHovering[6] = true :  isHovering[6] = false;
                });
              },
              onTap: () {},
              child: Text(
                widget.s7!,
                style: GoogleFonts.lato(
                  color: isHovering[6] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s8 != null)
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHovering[7] = true :  isHovering[7] = false;
                });
              },
              onTap: () {},
              child: Text(
                widget.s8!,
                style: GoogleFonts.lato(
                  color: isHovering[7] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s9 != null)
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHovering[8] = true :  isHovering[8] = false;
                });
              },
              onTap: () {},
              child: Text(
                widget.s9!,
                style: GoogleFonts.lato(
                  color: isHovering[8] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s10 != null)
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHovering[9] = true :  isHovering[9] = false;
                });
              },
              onTap: () {},
              child: Text(
                widget.s10!,
                style: GoogleFonts.lato(
                  color: isHovering[9] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
          const SizedBox(height: 5),
          if (widget.s11 != null)
            InkWell(
              onHover: (value){
                setState(() {
                  value ? isHovering[10] = true :  isHovering[10] = false;
                });
              },
              onTap: () {},
              child: Text(
                widget.s11!,
                style: GoogleFonts.lato(
                  color: isHovering[10] ? Colors.blueGrey : Colors.white,
                  fontSize: 14,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
