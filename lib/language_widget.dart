import 'package:flutter/material.dart';

import 'l10n/l10n.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final flag = L10n.getFlag(locale.languageCode);
    return Center(
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25,
        child: flag,
      ),
    );
  }
}
