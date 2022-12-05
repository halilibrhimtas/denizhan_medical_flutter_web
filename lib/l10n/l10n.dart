import 'package:flutter/material.dart';
import 'package:flag/flag.dart';

class L10n {
  static final all = [
    Locale("tr"),
    Locale("en"),
    Locale("fr"),
    Locale("de"),
    Locale("ar"),
    Locale("ru")
  ];

  static Flag? getFlag(String code){
    switch(code){
      case "ar":
        return Flag.fromCode(FlagsCode.SA);
      case "en":
        return Flag.fromCode(FlagsCode.US);
      case "tr":
        return Flag.fromCode(FlagsCode.TR);
      case "de":
        return Flag.fromCode(FlagsCode.DE);
      case "fr":
        return Flag.fromCode(FlagsCode.FR);
      case "ru":
        return Flag.fromCode(FlagsCode.RU);
    }
    return null;
  }
}