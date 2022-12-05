import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class SirketHakkinda extends StatefulWidget {
  const SirketHakkinda({
    Key? key,
  }) : super(key: key);



  @override
  State<SirketHakkinda> createState() => _SirketHakkindaState();
}

class _SirketHakkindaState extends State<SirketHakkinda> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    return SizedBox(
      height: screenSize.height * 0.5,
      width: screenSize.width * 0.70,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: screenSize.height * 0.40,
            width: screenSize.width * 0.30,
            child: Image.asset(
              "assets/images/medical.png",
            ),
          ),
          const SizedBox(width: 30,),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              width: screenSize.width * 0.30,
              height: screenSize.height * 0.35,
              child: Text(
                AppLocalizations.of(context)!.sirket_hakkinda_icerik,
                style: GoogleFonts.lato(
                  letterSpacing: 2,
                  fontSize: screenSize.width / 110,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

