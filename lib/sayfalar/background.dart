import 'package:flutter/material.dart';

import 'baslik.dart';

class Background extends StatefulWidget {
  const Background({
    Key? key,
    required this.screenSize,
    required this.text
  }) : super(key: key);

  final Size screenSize;
  final String text;

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: widget.screenSize.height * 0.18,
          width: widget.screenSize.width,
          child: Image.asset("assets/images/background.png",
              fit: BoxFit.cover),
        ),
        Container(
            color: Colors.white54,
            height: widget.screenSize.height * 0.18,
            width: widget.screenSize.width,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Baslik(text: widget.text, color: Colors.black87,)
            )
        ),
      ],
    );
  }
}