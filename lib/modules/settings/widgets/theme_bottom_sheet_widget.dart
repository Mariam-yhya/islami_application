import 'package:flutter/material.dart';
import 'package:islami_application/modules/settings/widgets/selected_option_widget.dart';
import 'package:islami_application/modules/settings/widgets/unselected_option_widget.dart';

class ThemeBottomSheetWidget extends StatelessWidget {
  const ThemeBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: theme.primaryColor.withOpacity(0.8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectedOptionWidget(
            selectedTitle: "Light",
          ),
          SizedBox(
            height: 30,
          ),
          UnSelectedOptionWidget(
            unSelectedTitle: "Dark",
          ),
        ],
      ),
    );
  }
}
