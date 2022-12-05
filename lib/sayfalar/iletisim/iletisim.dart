import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../bottom_bar/bottom_bar.dart';
import '../../nav_bar/nav_bar.dart';
import '../../set_page_title.dart';
import '../background.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class Iletisim extends StatefulWidget {
  const Iletisim({super.key});
  static const String route = '/iletisim';


  @override
  State<Iletisim> createState() => _IletisimState();
}

class _IletisimState extends State<Iletisim> {
  late GoogleMapController mapsController;
  List<Marker> markers = [];
  bool showmaps = true;
  Color color = const Color(0xff264796);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    markers.add(
      const Marker(
          markerId: MarkerId("myLocation"),
        position: LatLng(37.0157996,35.3216479),
        infoWindow: InfoWindow.noText
      )
    );

    if(markers.isNotEmpty){
      setState(() {
        showmaps = true;
      });
    }
  }
    

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    setPageTitle("${AppLocalizations.of(context)!.iletisim} | Denizhan Medikal", context);


    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(screenSize.width, 110),
          child: const NavBar()
      ),
      body: SingleChildScrollView(
        child:
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Background(screenSize: screenSize, text: AppLocalizations.of(context)!.iletisim,),
              Padding(
                padding:  EdgeInsets.only(top: screenSize.height*0.08, bottom: screenSize.height*0.08),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone_callback_sharp, color: color,size:screenSize.width*0.012,),
                          SizedBox(width: 5,),
                          Text(
                            AppLocalizations.of(context)!.telefon,
                            style: GoogleFonts.merriweather(
                                letterSpacing: 2,
                                fontSize: screenSize.width*0.014,
                                color: color,
                                fontWeight: FontWeight.w700
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                      Container(
                        color: Colors.black26,
                        width: screenSize.width*0.1,
                        height: 1,
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: screenSize.height*0.03),
                        child: Column(
                          children: [
                            Text(
                                "+90 322 227 50 36",
                              style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text("+90 322 227 46 62",
                              style: GoogleFonts.merriweather(
                                letterSpacing: 2,
                                fontSize:screenSize.width*0.008,
                                color: color,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.fax_outlined, color: Colors.white70, size: screenSize.width*0.03,),
                            SizedBox(width: 5,),
                            Text(
                              "Fax",
                              style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize: screenSize.width*0.014,
                                  color: color,
                                  fontWeight: FontWeight.w700
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                        Container(
                          color: Colors.black26,
                          width: screenSize.width*0.1,
                          height: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenSize.height*0.03),
                          child: Column(
                            children: [
                              Text(
                                "+90 322 228 07 21",
                                style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(" ",
                                style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.mail_rounded, color: color,size:screenSize.width*0.012,),
                            SizedBox(width: 7,),
                            Text(
                              AppLocalizations.of(context)!.e_posta,
                              style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize: screenSize.width*0.014,
                                  color: color,
                                  fontWeight: FontWeight.w700
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                        Container(
                          color: Colors.black26,
                          width: screenSize.width*0.1,
                          height: 1,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: screenSize.height*0.03),
                          child: Column(
                            children: [
                              Text(
                                "info@denizhanmedikal.com.tr",
                                style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text("muhasebe@denizhanmedikal.com.tr",
                                style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, color: color,size:screenSize.width*0.012,),
                            SizedBox(width: 7,),
                            Text(
                              AppLocalizations.of(context)!.adres,
                              style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize: screenSize.width*0.014,
                                  color: color,
                                  fontWeight: FontWeight.w700
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        const Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                        Container(
                          color: Colors.black26,
                          width: screenSize.width*0.1,
                          height: 1,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top: screenSize.height*0.03),
                            child: Container(
                              width: screenSize.width*0.2,
                              child: Text(
                                AppLocalizations.of(context)!.adres_icerik,
                                style: GoogleFonts.merriweather(
                                  letterSpacing: 2,
                                  fontSize:screenSize.width*0.008,
                                  color: color,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                child: showmaps ?
                    Container(
                      height: screenSize.height*0.5,
                      width: screenSize.width*0.7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: GoogleMap(
                        onMapCreated: (controller) {
                          setState(() {
                            mapsController = controller;
                          });
                        },
                        markers: Set<Marker>.of(markers),
                        mapType: MapType.normal,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(37.0157996,35.3216479),
                          zoom: 13,
                        ),

                      ),
                    )
                    :
                CircularProgressIndicator(
                  color: Colors.indigo,
                ),

              ),
              const SizedBox(height: 80),
              const BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}