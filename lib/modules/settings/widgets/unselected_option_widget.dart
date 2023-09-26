import 'package:flutter/material.dart';

class UnSelectedOptionWidget extends StatelessWidget {
  final String unSelectedTitle;

  const UnSelectedOptionWidget({super.key, required this.unSelectedTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: Colors.white10,
          borderRadius: BorderRadius.circular(8)),
      child: Text(
        unSelectedTitle,
      ),
    );
  }
}
