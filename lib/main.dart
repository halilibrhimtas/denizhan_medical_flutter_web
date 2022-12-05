import 'package:denizhan_medikal_web/home/home_screen.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/urun_icerikleri/needle_holder.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
import 'l10n/l10n.dart';
import 'package:denizhan_medikal_web/locale_provider.dart';
import 'package:denizhan_medikal_web/sayfalar/haberler/haberler.dart';
import 'package:denizhan_medikal_web/sayfalar/hakkimizda/hakkimizda.dart';
import 'package:denizhan_medikal_web/sayfalar/iletisim/iletisim.dart';
import 'package:denizhan_medikal_web/sayfalar/kaynaklar/kaynaklar.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/cerrahi_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/disposable_circular_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/disposable_hemorrhoidal_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/disposable_linear_cutter.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/endo_cutter.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/reusable_circular_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/reusable_hemorrhoidal_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/cerrahi_stapler/urun_icerikleri/skin_stapler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/disposable_laparaskopik_urunler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_bipolar_forceps.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_claw_grasper.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_clinch.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_clips.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_dissector.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_endo_bag.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/disposable_grasper.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/scissors.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/suction.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/disposable_laparaskopik_urunler/urun_icerikleri/trokar.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/plasma_kinetik/plasma_kinetik.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/plasma_kinetik/urun_icerikleri/bipolar_loop.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/plasma_kinetik/urun_icerikleri/plasma_kinetik_cihaz%C4%B1.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/reusable_laparaskopik_urunler.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/urun_icerikleri/reusable_claw_grasper.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/urun_icerikleri/reusable_dissector.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/urun_icerikleri/reusable_grasper.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/sayfalar/reusable_laparaskopik_urunler/urun_icerikleri/reusable_scissors.dart';
import 'package:denizhan_medikal_web/sayfalar/urunler/urunler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   OverlayState? overlayState;
//   OverlayEntry? overlayEntry;
//   OverlayEntry? overlayEntry2;
//   bool showOverlay = false;
//   int index = 0;
//   List<Widget> widgets = [
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.green,
//       child: TextButton(
//         child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.black,
//       child: TextButton(child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.yellow,
//       child: TextButton(child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.blueAccent,
//       child: TextButton(child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//     Container(
//       height: 300,
//       width: 300,
//       color: Colors.pink,
//       child: TextButton(child: Text('Click Me'),
//         onPressed: (){
//           print('Clicked');
//         },
//       ),
//     ),
//   ];
//   final layerLink = LayerLink();
//   final textButtonFocusNode = FocusNode();
//   final textButtonFocusNode1 = FocusNode();
//   final textButtonFocusNode2 = FocusNode();
//   final textButtonFocusNode3 = FocusNode();
//   final textButtonFocusNode4 = FocusNode();
//
//
//
//   void _showOverlay(BuildContext context, int index) async {
//     overlayState = Overlay.of(context)!;
//
//     overlayEntry = OverlayEntry(
//         maintainState: true,
//         builder: (context) {
//           return Positioned(
//             left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
//             top: MediaQuery.of(context).size.height * 0.09,
//             child: TextButton(
//               onPressed: () {},
//               onHover: (val) {
//                 if (val && showOverlay) {
//                   if (index == 0) {
//                     textButtonFocusNode.requestFocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.requestFocus();
//                   } else if(index == 2){
//                     textButtonFocusNode2.requestFocus();
//                   }else if (index == 3) {
//                     textButtonFocusNode3.requestFocus();
//                   }else if (index == 4) {
//                     textButtonFocusNode4.requestFocus();
//                   }
//
//                 } else {
//                   if (index == 0) {
//                     textButtonFocusNode.unfocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.unfocus();
//                   }
//                   else if (index == 2) {
//                     textButtonFocusNode2.unfocus();
//                   }
//                   else if (index == 3) {
//                     textButtonFocusNode3.unfocus();
//                   }
//                   else if (index == 4) {
//                     textButtonFocusNode4.unfocus();
//                   }
//                 }
//               },
//               child: Container(
//                   height: 40,
//                   width: 60,
//                   color: Colors.transparent
//               ),
//             ),
//           );
//         });
//     overlayEntry2 = OverlayEntry(
//         maintainState: true,
//         builder: (context) {
//           return Positioned(
//             left:index==0?  MediaQuery.of(context).size.width * 0.43 : MediaQuery.of(context).size.width *  0.5,
//             top: MediaQuery.of(context).size.height * 0.13,
//             child: TextButton(
//               onPressed: () {},
//               onHover: (val) {
//                 if (val && showOverlay) {
//                   if (index == 0) {
//                     textButtonFocusNode.requestFocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.requestFocus();
//                   }else if (index == 2) {
//                     textButtonFocusNode2.requestFocus();
//                   }else if (index == 3) {
//                     textButtonFocusNode3.requestFocus();
//                   }else if (index == 4) {
//                     textButtonFocusNode4.requestFocus();
//                   }
//                 } else {
//                   if (index == 0) {
//                     textButtonFocusNode.unfocus();
//                   } else if (index == 1) {
//                     textButtonFocusNode1.unfocus();
//                   }else if (index == 2) {
//                     textButtonFocusNode2.unfocus();
//                   }else if (index == 3) {
//                     textButtonFocusNode3.unfocus();
//                   }else if (index == 4) {
//                     textButtonFocusNode4.unfocus();
//                   }
//                 }
//               },
//               child: widgets[index],
//             ),
//           );
//         });
//
//     // overlayState!.insert(overlayEntry!);
//     overlayState!.insertAll([overlayEntry!, overlayEntry2!]);
//   }
//
//   void removeOverlay() {
//     overlayEntry!.remove();
//     overlayEntry2!.remove();
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     textButtonFocusNode.addListener(() {
//       if (textButtonFocusNode.hasFocus) {
//         _showOverlay(context, 0);
//       } else {
//         removeOverlay();
//       }
//     });
//     textButtonFocusNode1.addListener(() {
//       if (textButtonFocusNode1.hasFocus) {
//         _showOverlay(context, 1);
//       } else {
//         removeOverlay();
//       }
//     });
//     textButtonFocusNode2.addListener(() {
//       if (textButtonFocusNode2.hasFocus) {
//         _showOverlay(context, 2);
//       } else {
//         removeOverlay();
//       }
//     });
//     textButtonFocusNode3.addListener(() {
//       if (textButtonFocusNode3.hasFocus) {
//         _showOverlay(context, 3);
//       } else {
//         removeOverlay();
//       }
//     });
//     textButtonFocusNode4.addListener(() {
//       if (textButtonFocusNode4.hasFocus) {
//         _showOverlay(context, 4);
//       } else {
//         removeOverlay();
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Container(
//         height: 100,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextButton(
//               focusNode: textButtonFocusNode,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//             TextButton(
//               focusNode: textButtonFocusNode1,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode1.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//             TextButton(
//               focusNode: textButtonFocusNode2,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode2.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//             TextButton(
//               focusNode: textButtonFocusNode3,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode3.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//             TextButton(
//               focusNode: textButtonFocusNode4,
//               onHover: (val) {
//                 if (val) {
//                   textButtonFocusNode4.requestFocus();
//                   showOverlay = true;
//                 }
//               },
//               onPressed: () {},
//               child: const Text('Hover'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/hakkimizda',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/urunler',
        builder: (context, state) => const Urunler(),
      ),
      GoRoute(
        path: '/haberler',
        builder: (context, state) => const Haberler(),
      ),
      GoRoute(
        path: '/iletisim',
        builder: (context, state) => const Iletisim(),
      ),
      GoRoute(
        path: '/kaynaklar',
        builder: (context, state) => const Kaynaklar(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler',
        builder: (context, state) => const CerrahiStapler(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/skin_stapler',
        builder: (context, state) => const SkinStaplerPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/disposable_circular_stapler',
        builder: (context, state) => const DisposableCircularStaplerPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/disposable_hemorrhoidal_stapler',
        builder: (context, state) => const DisposableHemorrhoidalStaplerPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/disposable_linear_cutter',
        builder: (context, state) => const DisposableLinearCutterPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/endo_cutter',
        builder: (context, state) => const EndoCutterPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/reusable_circular_stapler',
        builder: (context, state) => const ReusableCircularStaplerPage(),
      ),
      GoRoute(
        path: '/urunler/cerrahi_stapler/reusable_hemorrhoidal_stapler',
        builder: (context, state) => const ReusableHemorrhoidalStaplerPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler',
        builder: (context, state) => const DisposableLaparaskopikUrunler(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_bipolar_forceps',
        builder: (context, state) => const DisposableBipolarForcepsPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_claw_grasper',
        builder: (context, state) => const DisposableClawGrasperPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_dissector',
        builder: (context, state) => const DisposableDissectorPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_clinch',
        builder: (context, state) => const DisposableClinchPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_clips',
        builder: (context, state) => const DisposableClipsPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_endo_bag',
        builder: (context, state) => const DisposableEndoBagPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_grasper',
        builder: (context, state) => const DisposableGrasperPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_scissors',
        builder: (context, state) => const DisposableScissorsPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_suction',
        builder: (context, state) => const DisposableSuctionPage(),
      ),
      GoRoute(
        path: '/urunler/disposable_laparaskopik_urunler/disposable_trokar',
        builder: (context, state) => const DisposableTrokarPage(),
      ),
      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler',
        builder: (context, state) => const ReusableLaparaskopikUrunler(),
      ),
      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler/reusable_claw_grasper',
        builder: (context, state) => const ReusableClawGrasperPage(),
      ),
      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler/reusable_dissector',
        builder: (context, state) => const ReusableDissectorPage(),
      ),
      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler/reusable_grasper',
        builder: (context, state) => const ReusableGrasperPage(),
      ),

      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler/reusable_scissors',
        builder: (context, state) => const ReusableScissorsPage(),
      ),

      GoRoute(
        path: '/urunler/plasma_kinetik',
        builder: (context, state) => const PlasmaKinetik(),
      ),
      GoRoute(
        path: '/urunler/plasma_kinetik/bipolar_loop',
        builder: (context, state) => const BipolarLoopPage(),
      ),
      GoRoute(
        path: '/urunler/plasma_kinetik/plasma_kinetik_cihazi',
        builder: (context, state) => const PlasmaKinetikCihaziPage(),
      ),
      GoRoute(
        path: '/hakkimizda/kurucumuzun_mesaji',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/hakkimizda/sirket_hakkinda',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/hakkimizda/misyon',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/hakkimizda/vizyon',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/hakkimizda/bayiler',
        builder: (context, state) => const Hakkimizda(),
      ),
      GoRoute(
        path: '/urunler/reusable_laparaskopik_urunler/needle_holder',
        builder: (context, state) => const NeedleHolder(),
      ),
    ],
  );


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleProvider(),
      builder: (context, child) {
        final provider = Provider.of<LocaleProvider>(context);
        return MaterialApp.router(
          builder: (context, child) => ResponsiveWrapper.builder(
            BouncingScrollWrapper.builder(context, child!),
            maxWidth: 2000,
            minWidth: 350,
            defaultScale: true,
            breakpoints: [
              ResponsiveBreakpoint.resize(450, name: MOBILE),
              ResponsiveBreakpoint.autoScale(800, name: TABLET),
              ResponsiveBreakpoint.resize(1000, name: DESKTOP),
            ],
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: L10n.all,
          locale: provider.locale,
          debugShowCheckedModeBanner: false,
          routeInformationProvider: _router.routeInformationProvider,
          routeInformationParser: _router.routeInformationParser,
          routerDelegate: _router.routerDelegate,
        );
      }
    );
  }
}
