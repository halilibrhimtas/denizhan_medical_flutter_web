import 'package:flag/flag.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'l10n/l10n.dart';
import 'locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguagePickerWidget extends StatefulWidget {
  const LanguagePickerWidget({Key? key}) : super(key: key);

  @override
  State<LanguagePickerWidget> createState() => _LanguagePickerWidgetState();
}

class _LanguagePickerWidgetState extends State<LanguagePickerWidget> {
  String selectedValue = "tr";
  Map map = {"tr" : Flag.fromCode(FlagsCode.TR, width: 25, height: 25,), "en":Flag.fromCode(FlagsCode.US, width: 25, height: 25,), "fr": Flag.fromCode(FlagsCode.FR, width: 25, height: 25,), "ar" : Flag.fromCode(FlagsCode.SA, width: 25, height: 25,), "de" : Flag.fromCode(FlagsCode.DE, width: 25, height: 25,), "ru" : Flag.fromCode(FlagsCode.RU, width: 25, height: 25,),};
  Color color = const Color(0xff264796);
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedValue,
        icon: Icon(Icons.arrow_drop_down_circle_outlined, color: color, size: 18,),
        items: L10n.all.map((locale){
          return DropdownMenuItem(
              value: locale.languageCode,
            onTap: (){
                final provider = Provider.of<LocaleProvider>(context, listen: false);
                provider.setLocale(locale);
            },
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: map[locale.languageCode]
                ),
              ) ,
          );
        }
        ).toList(),
        onChanged:(newValue){
          setState(() {
            selectedValue = newValue!;
          });
        }
    );
  }
}
