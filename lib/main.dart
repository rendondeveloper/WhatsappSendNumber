import 'dart:async';

import 'package:firebase_analytics/firebase_analytics.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:whatsappsendnumber/resources/configuration_app.dart';
import 'package:whatsappsendnumber/resources/router/router.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';


Future<void> main() async {
  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    MobileAds.instance.initialize();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    runApp(const MainApp());
  }, (error, stack) => FirebaseCrashlytics.instance.recordError(error, stack));
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: const [Locale('es')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: "Envía Whats facil",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColorDark: primaryDarkColor,
          primaryColorLight: primaryLightColor,
          primaryColor: primaryColor,
          dividerColor: dividerColor,
          cardColor: cardColor,
          fontFamily: fontGeneral,
          errorColor: errorColor,
          backgroundColor: background,
          //accentColor: accentColor,
          iconTheme: const IconThemeData(color: iconColor),
          appBarTheme: const AppBarTheme(
              centerTitle: true, titleTextStyle: TextStyle(fontSize: titleLarge, color: appBarTitle, fontWeight: FontWeight.normal)),
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: accentColor,
            selectedItemColor: iconColor,
            unselectedItemColor: dividerColor,
          ),
          textTheme: const TextTheme(
              displayLarge: TextStyle(fontSize: headlineLarge, color: primaryText, fontWeight: FontWeight.normal),
              displayMedium: TextStyle(fontSize: displayMedium, color: primaryText, fontWeight: FontWeight.normal),
              displaySmall: TextStyle(fontSize: displaySmall, color: primaryText, fontWeight: FontWeight.normal),
              headlineLarge: TextStyle(fontSize: headlineLarge, color: primaryText, fontWeight: FontWeight.normal),
              headlineMedium: TextStyle(fontSize: headlineMedium, color: primaryText, fontWeight: FontWeight.normal),
              headlineSmall: TextStyle(fontSize: headlineSmall, color: primaryText, fontWeight: FontWeight.normal),
              titleLarge: TextStyle(fontSize: titleLarge, color: primaryText, fontWeight: FontWeight.normal),
              titleMedium: TextStyle(fontSize: titleMedium, color: primaryText, fontWeight: FontWeight.normal),
              titleSmall: TextStyle(fontSize: titleSmall, color: primaryText, fontWeight: FontWeight.normal),
              bodyLarge: TextStyle(fontSize: bodyLarge, color: primaryText, fontWeight: FontWeight.normal),
              bodyMedium: TextStyle(fontSize: bodyMedium, color: primaryText, fontWeight: FontWeight.normal),
              bodySmall: TextStyle(fontSize: bodySmall, color: primaryText, fontWeight: FontWeight.normal))),
      routerConfig: router,
    );
  }
}
