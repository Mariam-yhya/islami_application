import 'package:flutter/material.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/modules/tasbih/widget/tasbih_item_widget.dart';
import 'package:provider/provider.dart';

class TasbihView extends StatefulWidget {
  const TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> {
  double angle = 0;
  int counter = 0;
  List<String> tasbih = [
    "سبحان الله",
    "الحمدلله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            onTap: onImageClicked,
            child: Transform.rotate(
              angle: angle,
              child: Image(
                image: AssetImage(
                  appProvider.isDark()
                      ? "assets/images/sebha_dark.png"
                      : "assets/images/body_of_seb7a.png",
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Text(
            "عدد التسبيحات",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(
            height: 40,
          ),
          TasbihItemWidget(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 23,
            ),
            title: "$counter",
            height: 81,
            width: 69,
            style: theme.textTheme.bodyLarge,
            color: theme.primaryColor.withOpacity(0.6),
          ),
          SizedBox(
            height: 20,
          ),
          TasbihItemWidget(
            padding: EdgeInsets.only(
              left: 17,
              right: 7,
              top: 5,
              bottom: 5,
            ),
            color: theme.colorScheme.onPrimary,
            title: tasbih[currentIndex],
            height: 51,
            width: 170,
            style: TextStyle(
              color: theme.colorScheme.onBackground,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  void onImageClicked() {
    angle += 3;
    counter++;
    if (counter > 30) {
      counter = 0;
      currentIndex++;
      currentIndex = currentIndex % 4;
    }
    setState(() {});
  }
}
