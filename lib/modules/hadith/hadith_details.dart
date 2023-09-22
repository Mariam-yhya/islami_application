import 'package:flutter/material.dart';
import 'package:islami_application/modules/hadith/hadeth_screen.dart';

class HadithDetailsView extends StatefulWidget {
  HadithDetailsView({super.key});

  static const String routeName = "Hadith_Details";

  @override
  State<HadithDetailsView> createState() => _HadithDetailsViewState();
}

class _HadithDetailsViewState extends State<HadithDetailsView> {
  String content = "";
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadithContent;

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
              Text(
                args.title,
                style: theme.textTheme.bodyMedium,
              ),
              Divider(
                color: theme.primaryColor,
                indent: 30,
                endIndent: 30,
                thickness: 1.2,
                height: 10,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    args.content,
                    style: theme.textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
