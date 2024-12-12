import 'package:flutter/material.dart';

class CustomBottomSheet extends StatelessWidget {
  final Widget content;
  final double? height;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  const CustomBottomSheet({
    super.key,
    required this.content,
    this.height,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16)),
          color: backgroundColor ?? Colors.white,
        ),
        height: height ?? 300,
        padding: padding ?? const EdgeInsets.all(16),
        child: content,
      ),
    );
  }
}
