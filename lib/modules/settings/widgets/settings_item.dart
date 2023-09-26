import 'package:flutter/material.dart';

typedef SettingOptionClicked = void Function();

class SettingsItem extends StatelessWidget {
  final String settingsOptionTitle;
  final String optionTitle;
  final SettingOptionClicked onOptionTaped;

  SettingsItem({
    super.key,
    required this.settingsOptionTitle,
    required this.optionTitle,
    required this.onOptionTaped,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          settingsOptionTitle,
          style: theme.textTheme.bodyLarge,
        ),
        GestureDetector(
          onTap: onOptionTaped,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            width: mediaQuery.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: theme.colorScheme.onSecondary,
                  width: 1.2,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(optionTitle),
                Icon(
                  Icons.arrow_drop_down_sharp,
                  color: theme.colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
