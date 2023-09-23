import 'package:flutter/material.dart';
import 'package:islami_application/modules/settings/widgets/selected_option_widget.dart';
import 'package:islami_application/modules/settings/widgets/unselected_option_widget.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: theme.primaryColor.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWidget(
            selectedTitle: "English",
          ),
          SizedBox(
            height: 30,
          ),
          UnSelectedOptionWidget(
            unSelectedTitle: "عربي",
          ),
        ],
      ),
    );
  }
}
