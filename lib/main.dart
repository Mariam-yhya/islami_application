import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/core/themes/application_theme.dart';
import 'package:islami_application/layout/home_layout.dart';
import 'package:islami_application/modules/hadith/hadith_details.dart';
import 'package:islami_application/modules/quran/quran_details.dart';
import 'package:islami_application/modules/splash_screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MyApplication(),
    ),
  );
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(appProvider.currentLocal),
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
