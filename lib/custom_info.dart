import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";


class CustomInfo extends StatefulWidget {
  final Size screenSize;
  final int index;

  const CustomInfo({Key? key, required this.screenSize, required this.index}) : super(key: key);

  @override
  State<CustomInfo> createState() => _CustomInfoState();
}

class _CustomInfoState extends State<CustomInfo> {
  double? width;
  double? height;
  Color? color;
  bool? animate;
  bool? textAppear;

  @override
  void initState() {
    animate = false;
    textAppear = false;
    showInfoPlayer(animate!);
    super.initState();
  }

  List<String> images = [
    "assets/plasma_kinetik/plasma_kinetik_cihazi.jpg",
    "assets/plasma_kinetik/loop.jpg",
  ];

  List<String> places = [
    "Plasma Kinetik Cihazı",
    "Loop",
  ];

  List<String> ozellikler = [
    "- Özellik1\n- Özellik2\n- Özellik3",
    "- Özellik1\n- Özellik2\n- Özellik3"
  ];

  void showInfoPlayer(bool animate) {
    setState(() {
      if (animate) {
        height = widget.screenSize.height*0.35;
        width = widget.screenSize.width*0.3;
        color = Color(0xff264796);

        Future.delayed(const Duration(milliseconds: 110), () {
          setState(() {
            textAppear = true;
          });
        });
      } else {
        height = widget.screenSize.height*0.3;
        width = widget.screenSize.width*0.2;
        color = Color(0xff264796);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MouseRegion(
          onEnter: (a) {
            setState(() {
              animate = true;
              showInfoPlayer(animate!);
            });
          },
          onExit: (a) {
            animate = false;
            showInfoPlayer(animate!);
            textAppear = false;
          },
          child: Container(
            color: const Color(0xff264796),
            width: widget.screenSize.width*0.35,
            height: widget.screenSize.height*0.5,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    height: height,
                    width: width,
                    duration: const Duration(milliseconds: 300),
                    padding: EdgeInsets.only(left: widget.screenSize.width*0.02, top: widget.screenSize.height*0.02),
                    color: color,
                    child: AnimatedOpacity(
                      opacity: textAppear! ? 1 : 0,
                      duration: Duration(milliseconds: textAppear! ? 400 : 100),
                      curve: Curves.easeOut,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: Text(
                                ozellikler[widget.index],
                              style: GoogleFonts.merriweather(
                                fontSize: widget.screenSize.height*0.02,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  padding: EdgeInsets.only(left: animate! ? widget.screenSize.width*0.11 : 0, top: animate! ? widget.screenSize.height*0.07 : 10),
                  duration: const Duration(milliseconds: 300),
                  height: widget.screenSize.height*0.35,
                  width:widget.screenSize.width*0.45 ,
                  child: Image(
                    width: widget.screenSize.width*0.4,
                    image:  AssetImage(images[widget.index]),
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedOpacity(
                    opacity: textAppear! ? 0 : 1,
                    duration: Duration(milliseconds: textAppear! ? 250 : 250),
                    child: Container(
                      width: width,
                      color: const Color(0xFFF5F5F5).withOpacity(0.7),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text(
                              places[widget.index],
                              style: GoogleFonts.merriweather(
                                fontSize: widget.screenSize.height*0.03,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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