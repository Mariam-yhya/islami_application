import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/modules/hadith/hadeth_screen.dart';
import 'package:islami_application/modules/quran/quran_screen.dart';
import 'package:islami_application/modules/radio/radio_screen.dart';
import 'package:islami_application/modules/settings/settings_screen.dart';
import 'package:islami_application/modules/tasbih/tasbih_screen.dart';
import 'package:provider/provider.dart';

import '../core/provider/app_provider.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "HomePage";

  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadithView(),
    TasbihView(),
    RadioView(),
    SettingsView()
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            appProvider.isDark()
                ? "assets/images/background_dark.png"
                : "assets/images/background.png",
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            local.islami,
          ),
        ),
        body: screens[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/moshaf_blue@3x.png")),
                label: local.quran),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadith@3x.png")),
                label: local.hadeth),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha@3x.png")),
                label: local.tasbih),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue@3x.png")),
                label: local.radio),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: local.settings),
          ],
        ),
      ),
    );
  }
}
