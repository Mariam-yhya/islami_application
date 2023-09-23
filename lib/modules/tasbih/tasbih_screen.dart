import 'package:flutter/material.dart';
import 'package:islami_application/modules/tasbih/widget/tasbih_item_widget.dart';

class TasbihView extends StatefulWidget {
  const TasbihView({super.key});

  @override
  State<TasbihView> createState() => _TasbihViewState();
}

class _TasbihViewState extends State<TasbihView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          GestureDetector(
            child: Image(
              image: AssetImage("assets/images/body_of_seb7a.png"),
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
            title: "30",
            height: 81,
            width: 69,
            style: theme.textTheme.bodyLarge,
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
            title: "سبحان الله",
            height: 51,
            width: 137,
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
