import 'package:flutter/material.dart';
import 'package:islami_application/modules/hadith/hadeth_scrren.dart';
import 'package:islami_application/modules/quran/quran_screen.dart';
import 'package:islami_application/modules/radio/radio_screen.dart';
import 'package:islami_application/modules/settings/settings_screen.dart';
import 'package:islami_application/modules/tasbih/tasbih_screen.dart';

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
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "إسلامي",
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
                label: "Quran"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/hadith@3x.png")),
                label: "Hadeth"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha@3x.png")),
                label: "Tasbih"),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio_blue@3x.png")),
                label: "Radio"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
