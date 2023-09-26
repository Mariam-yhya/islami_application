import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_application/core/provider/app_provider.dart';
import 'package:islami_application/modules/settings/widgets/language_bottom_sheet_widget.dart';
import 'package:islami_application/modules/settings/widgets/settings_item.dart';
import 'package:islami_application/modules/settings/widgets/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          SettingsItem(
            settingsOptionTitle: local.language,
            optionTitle: appProvider.currentLocal == "en" ? "English" : "عربي",
            onOptionTaped: () {
              showLanguageBottomSheet(context);
            },
          ),
          SizedBox(
            height: 40,
          ),
          SettingsItem(
              settingsOptionTitle: local.themeMode,
              optionTitle: appProvider.isDark() ? local.dark : local.light,
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
