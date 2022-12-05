import 'package:denizhan_medikal_web/nav_bar/nav_bar_drawer.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:denizhan_medikal_web/bottom_bar/bottom_bar.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import '../bottom_bar/bottom_bar_mobile.dart';
import '../kategoriler.dart';
import '../language_picker_widget.dart';
import '../nav_bar/nav_bar.dart';
import '../responsive.dart';
import '../set_page_title.dart';
import 'anasayfa_haberler.dart';
import 'anasayfa_haberler_mobil.dart';
import 'package:url_launcher/url_launcher.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String route = '';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  VideoPlayerController? videoPlayerController;
  bool state = false;

  VoidCallback? listener;
  @override
  void initState() {
    listener = (){
      setState(() {

      });
    };
    super.initState();
  }

  void createVideo() {
    if(videoPlayerController == null){
      videoPlayerController = VideoPlayerController.asset("assets/video/video.mp4")
          ..addListener(listener!)..initialize();
    }
  }

  Color color = const Color(0xff264796);
  List isHovering = [false, false, false, false, false, false, false];
  List isHoveringKategori = [false, false, false];
  CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    setPageTitle("Denizhan Medikal'e Hoşgeldiniz.", context);
    return Scaffold(
      drawerScrimColor: Colors.white38,
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context) ? AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: LanguagePickerWidget(),
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon:  Icon(
                Icons.menu,
                color: color,
                size: 30, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),// for smaller screen sizes
        backgroundColor: Colors.white,
        elevation: 0,
        title:
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Image.asset(
            "assets/images/logo.png",
            width: 200,
            height: 100,
          ),
        ),
      ) : PreferredSize(
          preferredSize: Size(screenSize.width, 110),
          child: const NavBar()
      ),
      drawer: NavBarDrawer(),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
              image: AssetImage("images/arka_plan.png"),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: screenSize.height*0.5,
                    width: screenSize.width,
                    child: Image.asset("assets/images/background.png",
                        fit: BoxFit.cover),
                  ),
                ],
              ),
              const Kategoriler(),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: Text(
                      AppLocalizations.of(context)!.plasma_kinetik_cihazi,
                      style: GoogleFonts.merriweather(
                          letterSpacing: 2,
                          fontSize: 25,
                          color: color,
                          fontWeight: FontWeight.w600
                      ),
                      textAlign: TextAlign.start,
                  ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: screenSize.width*0.7,
                  height: screenSize.height*0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rezektoskop.png")
                    )
                  ),
                  child: Center(
                    child: FloatingActionButton(
                      child: Icon(Icons.play_arrow, color: color, size: 18,),
                      backgroundColor: Colors.white38,
                      hoverColor: Colors.white60,
                      elevation: 0,
                      onPressed: () async {
                        if (await canLaunchUrl(Uri.parse("https://drive.google.com/file/d/1V4cXly38_8HjqWKEnWEatIPOctmpUAr7/view?usp=share_link"))) {
                        await launchUrl(Uri.parse("https://drive.google.com/file/d/1V4cXly38_8HjqWKEnWEatIPOctmpUAr7/view?usp=share_link"));
                        } else
                        // can't launch url, there is some error
                        throw "Could not launch https://drive.google.com/file/d/1V4cXly38_8HjqWKEnWEatIPOctmpUAr7/view?usp=share_link";
                      },
                    ),
                  ),
                ) ,
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize.height*0.1, bottom:  screenSize.height*0.1),
                child: ResponsiveWidget.isSmallScreen(context) ? AnaSayfaHaberlerMobil() : const AnaSayfaHaberler(),
              ),
              //const Body(),
               ResponsiveWidget.isSmallScreen(context) ? BottomBarMobile() : BottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}

