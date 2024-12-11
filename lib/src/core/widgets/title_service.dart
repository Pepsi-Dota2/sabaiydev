import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/config/constant/constant.dart';

class TitleServiceWidget extends StatelessWidget {
  const TitleServiceWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.lightHeading1,
    );
  }
}
