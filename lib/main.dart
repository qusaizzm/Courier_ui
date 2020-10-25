import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:new_app/screens/login.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ar', ''), // Hebrew, no country code
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        return supportedLocales.last;
      },
      title: 'Neumorphic Design',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
        //primarySwatch: kPrimaryColor,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Cairo",
      ),
      home:Login(),
    );
  }
}

