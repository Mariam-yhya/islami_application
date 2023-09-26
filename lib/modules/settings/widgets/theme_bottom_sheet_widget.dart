import 'package:flutter/material.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/modules/settings/widgets/selected_option_widget.dart';
import 'package:islami_application/modules/settings/widgets/unselected_option_widget.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? SelectedOptionWidget(selectedTitle: "Dark")
                : UnSelectedOptionWidget(unSelectedTitle: "Dark"),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              appProvider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: appProvider.isDark()
                ? UnSelectedOptionWidget(unSelectedTitle: "Light")
                : SelectedOptionWidget(selectedTitle: "Light"),
          ),
        ],
      ),
    );
  }
}
