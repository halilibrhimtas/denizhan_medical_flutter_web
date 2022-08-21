import 'package:flutter/material.dart';
import 'bottom_bar_column.dart';
import "package:google_fonts/google_fonts.dart";

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  Color color = const Color(0xff264796);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomBarColumn(
                heading: 'LAPARASKOPİK ALETLER',
                s1: 'Polimer Klips',
                s2: 'Endo Bag',
                s3: 'Disektör',
                s4: "Grasper",
                s5: "Makas",
                s6: "Trokar",
              ),
              BottomBarColumn(
                heading: 'DISPOSABLE STAPLER',
                s1: 'Circular',
                s2: 'Endocutter',
                s3: 'Hemorrhoids',
                s4: "Linear Cutter",
                s5: "Skin",
                s6: " ",
              ),
              BottomBarColumn(
                heading: 'MENÜ',
                s1: 'Ürünler',
                s2: 'Kaynaklar',
                s3: "Haberler",
                s4: "Kurumsal",
                s5: "İletişim",
                s6: " ",
              ),
              BottomBarColumn(
                heading: 'KURUMSAL',
                s1: 'Hakkımızda',
                s2: 'Misyonumuz',
                s3: 'Bayiler',
                s4: " ",
                s5: " ",
                s6: " ",
              ),
              BottomBarColumn(
                heading: 'BİZİ TAKİP EDİN',
                s1: 'Facebook',
                s2: 'Instagram',
                s3: "Twitter",
                s4: "Youtube",
                s5: "Linkedin",
                s6: " ",
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Text(
            'Copyright © 2022 | Tüm hakları saklıdır. | Denizhan Medikal tarafından yapılmıştır.  ',
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
