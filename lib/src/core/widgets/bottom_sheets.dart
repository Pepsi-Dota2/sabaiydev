import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/widgets/custom_bottom_sheet.dart';
  void showCustomBottomSheet({
  required BuildContext context,
  required double height,
  required Widget content,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => CustomBottomSheet(
      height: height,
      content: content,
    ),
  );
}