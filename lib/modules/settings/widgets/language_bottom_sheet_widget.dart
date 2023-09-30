import 'package:flutter/material.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/modules/settings/widgets/selected_option_widget.dart';
import 'package:islami_application/modules/settings/widgets/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: theme.primaryColor.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal == "en"
                ? SelectedOptionWidget(selectedTitle: "English")
                : UnSelectedOptionWidget(unSelectedTitle: "English"),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              appProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: appProvider.currentLocal == "en"
                ? UnSelectedOptionWidget(unSelectedTitle: "عربي")
                : SelectedOptionWidget(selectedTitle: "عربي"),
          ),
        ],
      ),
    );
  }
}
