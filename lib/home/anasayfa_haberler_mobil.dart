import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../responsive.dart';



class AnaSayfaHaberlerMobil extends StatefulWidget {
  const AnaSayfaHaberlerMobil({Key? key}) : super(key: key);

  @override
  State<AnaSayfaHaberlerMobil> createState() => _AnaSayfaHaberlerMobilState();
}

class _AnaSayfaHaberlerMobilState extends State<AnaSayfaHaberlerMobil> {
  Color color = const Color(0xff264796);
  ScrollController scrollController = ScrollController();
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


  CarouselController controller = CarouselController();
  int current = 0;
  final List _isSelected = [true, false, false, false, false, false, false, false, false, false];
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
    var screenSize = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(bottom: screenSize.height*0.07),
      child: Container(
        color: Colors.white,
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: screenSize.height*0.07),
                    child: Column(
                        children: [
                          Text(
                            AppLocalizations.of(context)!.en_son_haberler,
                            style: GoogleFonts.merriweather(
                                letterSpacing: 2,
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w700
                            ),
                            textAlign: TextAlign.start,
                          ),
                          const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                          Container(
                            color: Colors.black87,
                            width: 100,
                            height: 2,
                          ),
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                      height: screenSize.height*0.42,
                      color: Colors.white,
                      child: Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: screenSize.height*0.12, left: screenSize.width*0.06),
                            child: Center(
                              child: CarouselSlider(
                                items: image
                                    .map(
                                      (element) => ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: InkWell(
                                        onTap: () async {
                                          if (await canLaunchUrl(Uri.parse(url[current]))) {
                                            await launchUrl(Uri.parse(url[current]));
                                          } else
                                            // can't launch url, there is some error
                                            throw "Could not launch ${url[current]}";
                                        },
                                        child: Card(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              image: DecorationImage(
                                                image: AssetImage(element),
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                            width: screenSize.width*0.5,
                                            height: screenSize.height*0.4,
                                          ),
                                        )
                                    ),
                                  ),
                                ).toList(),
                                options: CarouselOptions(
                                    enableInfiniteScroll: true,
                                    autoPlay: true,
                                    enlargeCenterPage: true,
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    viewportFraction: 0.8,
                                    pageSnapping: true,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        current = index;
                                        for (int i = 0; i < image.length; i++) {
                                          if (i == index) {
                                            _isSelected[i] = true;
                                          } else {
                                            _isSelected[i] = false;
                                          }
                                        }
                                      });
                                    }),
                                carouselController: controller,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                baslik[current],
                                style: GoogleFonts.merriweather(
                                    fontSize: 15,
                                    color: color,
                                    fontWeight: FontWeight.w500
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          // ElevatedButton(
                          //     onPressed: () {} ,
                          //     style: ButtonStyle(
                          //         backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          //         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          //             RoundedRectangleBorder(
                          //                 borderRadius: BorderRadius.circular(18.0),
                          //                 side: BorderSide(color: color)
                          //             )
                          //         )
                          //     ),
                          //     child:   Icon(Icons.arrow_back_ios_new, color: color, size: screenSize.width / 90,)
                          // ),
                        ],
                      )
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 120.0),
              child: Container(
                width: screenSize.width*0.8,
                height: screenSize.height*0.5,
                color: color,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 25.0),
                        child: Column(
                            children: [
                              Text(
                                AppLocalizations.of(context)!.iletisim,
                                style: GoogleFonts.merriweather(
                                    letterSpacing: 2,
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700
                                ),
                                textAlign: TextAlign.start,
                              ),
                              const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                              Container(
                                color: Colors.white,
                                width: 100,
                                height: 2,
                              ),
                            ]
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:5.0),
                                child: Icon(Icons.mail_outlined, color: Colors.white70, size: 25,),
                              ),
                              Text("info@denizhanmedikal.com.tr",
                                style: GoogleFonts.merriweather(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                ),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:5.0),
                                child: Icon(Icons.phone, color: Colors.white70, size: 25),
                              ),
                              Text("+90 322 227 50 36",
                                style: GoogleFonts.merriweather(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                ),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:5.0),
                                child: Icon(Icons.fax_outlined, color: Colors.white70, size: 25),
                              ),
                              Text("+90 322 228 07 21",
                                style: GoogleFonts.merriweather(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400
                                ),)
                            ],
                          ),
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:5.0),
                                child: Icon(Icons.location_on, color: Colors.white70, size: 25),
                              ),
                              Container(
                                width: screenSize.width*0.68,
                                child: Text(
                                  AppLocalizations.of(context)!.adres_icerik,
                                  style: GoogleFonts.merriweather(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
