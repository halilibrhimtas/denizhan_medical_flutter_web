import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List isHovering = [false, false, false, false, false];
  Color color = const Color(0xff264796);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
            top: screenSize.height * 0.51,
            left: screenSize.width / 5,
            right: screenSize.width / 5),
        child: Container(
          width: screenSize.width * 3 / 5,
          height: screenSize.height * 10 / 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: color),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHovering[0] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'HAKKIMIZDA',
                        style: GoogleFonts.lato(
                            fontSize: screenSize.height * 2 / 100,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovering[0],
                        child: Container(
                          height: 2,
                          width: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHovering[1] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'ÜRÜNLER',
                        style: GoogleFonts.lato(
                            fontSize: screenSize.height * 2 / 100,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovering[1],
                        child: Container(
                          height: 2,
                          width: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHovering[2] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'KAYNAKLAR',
                        style: GoogleFonts.lato(
                            fontSize: screenSize.height * 2 / 100,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovering[2],
                        child: Container(
                          height: 2,
                          width: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHovering[3] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'HABERLER',
                        style: GoogleFonts.lato(
                            fontSize: screenSize.height * 2 / 100,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovering[3],
                        child: Container(
                          height: 2,
                          width: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(width: screenSize.width / 20),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      isHovering[4] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'İLETİŞİM',
                        style: GoogleFonts.lato(
                            fontSize: screenSize.height * 2 / 100,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: isHovering[4],
                        child: Container(
                          height: 2,
                          width: 30,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
