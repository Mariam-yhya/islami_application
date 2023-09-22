import 'package:flutter/material.dart';
import 'package:islami_application/core/themes/application_theme.dart';
import 'package:islami_application/layout/home_layout.dart';
import 'package:islami_application/modules/hadith/hadith_details.dart';
import 'package:islami_application/modules/quran/quran_details.dart';
import 'package:islami_application/modules/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomePage.routeName: (context) => HomePage(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
        HadithDetailsView.routeName: (context) => HadithDetailsView(),
      },
    );
  }
}
