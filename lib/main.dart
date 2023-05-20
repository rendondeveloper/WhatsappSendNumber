import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:whatsappsendnumber/resources/configuration_app.dart';
import 'package:whatsappsendnumber/resources/router/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:whatsappsendnumber/resources/strings_app.dart';

void main() {
  runApp(const FutbolApp());
}

class FutbolApp extends StatelessWidget {
  const FutbolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: const [
        Locale('es')
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      title: "Send Message Easy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            titleTextStyle: TextStyle(fontSize: titleLarge, color: appBarTitle, fontWeight: FontWeight.normal)
          ),
          primaryColorDark: primaryDarkColor,
          primaryColorLight: primaryLightColor,
          primaryColor: primaryColor,
          errorColor: errorColor,
          iconTheme: const IconThemeData(
            color: iconColor
          ),
          accentColor: accentColor,
          dividerColor: dividerColor,
          backgroundColor: background,
          cardColor: cardColor,
          fontFamily: fontGeneral,
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