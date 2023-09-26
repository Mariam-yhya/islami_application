import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/modules/hadith/hadith_details.dart';

class HadithView extends StatefulWidget {
  HadithView({super.key});

  @override
  State<HadithView> createState() => _HadithViewState();
}

class _HadithViewState extends State<HadithView> {
  List<HadithContent> hadith = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    if (hadith.isEmpty) readFile();

    return Column(
      children: [
        Image.asset("assets/images/ahadeth_image.png"),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          height: 10,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 1.5,
          endIndent: 10,
          indent: 10,
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, HadithDetailsView.routeName,
                    arguments: HadithContent(
                        title: hadith[index].title,
                        content: hadith[index].content));
              },
              child: Text(
                hadith[index].title,
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: hadith.length,
            separatorBuilder: (context, index) => Divider(
              thickness: 1.5,
              endIndent: 80,
              indent: 80,
              height: 10,
            ),
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadith = text.split("#");

    for (int i = 0; i < allHadith.length; i++) {
      String singleHadith = allHadith[i].trim();
      int firstLine = singleHadith.indexOf("\n");
      String title = singleHadith.substring(0, firstLine);
      String content = singleHadith.substring(firstLine + 1);

      HadithContent hadithContent =
          HadithContent(title: title, content: content);

      setState(() {
        hadith.add(hadithContent);
      });
    }
  }
}

class HadithContent {
  final String title;
  final String content;

  HadithContent({required this.title, required this.content});
}
