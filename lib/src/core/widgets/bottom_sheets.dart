import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/widgets/custom_bottom_sheet.dart';

void showCustomBottomSheet({
  required BuildContext context,
  required double height,
  required Widget content,
}) {
  showModalBottomSheet(
    context: context,
    enableDrag: true, // Enable dragging
    isScrollControlled: true,
    builder: (context) {
      return DraggableScrollableSheet(
        expand: false,
        builder: (_, scrollController) {
          return CustomBottomSheet(
            height: height,
            content: content,
          );
        },
      );
    },
  );
}
