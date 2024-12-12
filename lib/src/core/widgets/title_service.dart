import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/config/constant/constant.dart';

class TitleServiceWidget extends StatelessWidget {
  const TitleServiceWidget(
      {super.key, required this.title, this.icons, this.onPress, this.size});
  final String title;
  final IconData? icons;
  final VoidCallback? onPress;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.lightHeading1,
        ),
        IconButton(
            onPressed: onPress,
            icon: Icon(
              icons,
              size: size,
            ))
      ],
    );
  }
}
