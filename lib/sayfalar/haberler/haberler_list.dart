import 'package:denizhan_medikal_web/nav_bar/on_hover.dart';
import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class HaberlerList extends StatefulWidget {
  const HaberlerList({Key? key}) : super(key: key);

  @override
  State<HaberlerList> createState() => _HaberlerListState();
}

class _HaberlerListState extends State<HaberlerList> {
  Color color = const Color(0xff264796);
  List<String> image = [
    "assets/haberler/aosb.png",
    "assets/haberler/vali_ziyareti.png",
    "assets/haberler/cukurova_uni.jpeg",
    "assets/haberler/bbc.png",
    "assets/haberler/danisman.png",
    "assets/haberler/euronews.png",
    "assets/haberler/ntv.png",
    "assets/haberler/metropol_tv.png",
    "assets/haberler/halk_tv.png",
    "assets/haberler/tv8-bucuk.png",
  ];

  List<String> url = [
    "https://twitter.com/denizhanmedikal/status/1524789215787196421",
    "http://www.adana.gov.tr/sg-586",
    "https://www.linkedin.com/posts/y%C3%BCcel-denizhan-b391a3100_%C3%A7ukurova-%C3%BCniversitesi-biyomedikal-m%C3%BChendislik-activity-6934021562568163328-BQGR?utm_source=share&utm_medium=member_desktop",
    "https://www.bbc.com/turkce/haberler-turkiye-59701514",
    "https://cukurovametropol.com.tr/Haber/gundem/denizhan-davutoglunun-danismani-oldu-87998",
    "https://tr.euronews.com/2021/12/14/t-bbi-cihaz-sektoru-firmalar-hastanelerden-alacaklar-n-tahsil-edemiyor-ameliyatlar-durabil",
    "https://www.youtube.com/watch?v=o37jQh3cNYg",
    "https://www.youtube.com/watch?v=c2yJhde-u_I",
    "https://www.youtube.com/watch?v=cBhx9TL6W_A",
    "https://www.youtube.com/watch?v=Mm1p93qlqXs&t=1s",
  ];
  @override
  Widget build(BuildContext context) {
    List<String> baslik = [
    AppLocalizations.of(context)!.aosb,
    AppLocalizations.of(context)!.vali,
    AppLocalizations.of(context)!.universite,
    AppLocalizations.of(context)!.bbc,
    AppLocalizations.of(context)!.davutoglu,
    AppLocalizations.of(context)!.euronews,
    AppLocalizations.of(context)!.ntv,
    AppLocalizations.of(context)!.metropol_tv,
    AppLocalizations.of(context)!.halk_tv,
    AppLocalizations.of(context)!.tv_85,
    ];
    List<String> icerik = [
      AppLocalizations.of(context)!.aosb_icerik,
      AppLocalizations.of(context)!.vali_icerik,
      AppLocalizations.of(context)!.universite_icerik,
      AppLocalizations.of(context)!.bbc_icerik,
      AppLocalizations.of(context)!.davutoglu_icerik,
      AppLocalizations.of(context)!.euronew_icerik,
      AppLocalizations.of(context)!.ntv_icerik,
      AppLocalizations.of(context)!.metropol_tv_icerik,
      AppLocalizations.of(context)!.halk_tv_icerik,
      AppLocalizations.of(context)!.tv_85_icerik,
    ];
    var screenSize = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Container(
        width: screenSize.width*0.65,
        color: Colors.white,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: icerik.length,
            itemBuilder: (context, index){
              return OnHover(
                builder: (bool isHover) {
                  return Card(
                    shadowColor: Colors.black,
                    child: SizedBox(
                      width: screenSize.width*0.6,
                      height: screenSize.height*0.4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        child: Row(
                          children: [
                            SizedBox(
                              width: screenSize.width*0.27,
                              height: screenSize.height*0.37,
                              child: Image(
                                  image: AssetImage(image[index]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: SizedBox(
                                width: screenSize.width*0.3,
                                height: screenSize.height*0.4,
                                child: Column(
                                  children: [
                                    Text(
                                        baslik[index],
                                      style: GoogleFonts.merriweather(
                                        fontSize: screenSize.height*0.03,
                                        fontWeight: FontWeight.bold,
                                        color: color,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(icerik[index],
                                      style: GoogleFonts.merriweather(
                                        fontSize: screenSize.height*0.017,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Align(
                                        alignment: Alignment.bottomRight,
                                        child: OnHover(
                                          builder: (bool hover) {
                                            return Padding(
                                              padding: const EdgeInsets.only(right: 5),
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: hover ? color : Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                  ),
                                                  ),
                                                  onPressed: () async {
                                                    if (await canLaunchUrl(Uri.parse(url[index]))) {
                                                      await launchUrl(Uri.parse(url[index]));
                                                    } else
                                                    // can't launch url, there is some error
                                                    throw "Could not launch $url";
                                                  },
                                                  child: Text(
                                                    AppLocalizations.of(context)!.detay,
                                                    style: GoogleFonts.merriweather(
                                                      fontSize: screenSize.height*0.02,
                                                      fontWeight: FontWeight.bold,
                                                      color: hover ? Colors.white : color,
                                                    ),
                                                  )
                                              ),
                                            );
                                          }
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }
              );
            }),
      ),
    );
  }
}
