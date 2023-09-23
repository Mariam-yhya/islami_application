import 'package:flutter/material.dart';
import 'package:islami_application/modules/settings/widgets/language_bottom_sheet_widget.dart';
import 'package:islami_application/modules/settings/widgets/settings_item.dart';
import 'package:islami_application/modules/settings/widgets/theme_bottom_sheet_widget.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          SettingsItem(
            settingsOptionTitle: "Language",
            optionTitle: "English",
            onOptionTaped: () {
              showLanguageBottomSheet(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          SettingsItem(
              settingsOptionTitle: "Theme Mode",
              optionTitle: "Dark",
              onOptionTaped: () {
                showThemeBottomSheet(context);
              }),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheetWidget());
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => ThemeBottomSheetWidget());
  }
}
