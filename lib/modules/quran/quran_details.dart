import 'package:flutter/material.dart';

class QuranDetailsView extends StatelessWidget {
  const QuranDetailsView({super.key});

  static const String routeName = "Quran_Details";

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);

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
        body: Container(
          height: mediaQuery.height,
          width: mediaQuery.width,
          margin: EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 160),
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Color(0xFFF8F8F8).withOpacity(0.8),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sura Name ",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Icon(
                    Icons.play_circle,
                    color: Colors.black,
                    size: 32,
                  )
                ],
              ),
              Divider(
                color: theme.primaryColor,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
