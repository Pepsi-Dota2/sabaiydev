import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/config/constant/app_color.dart';

class ReusableImagePickerButton extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const ReusableImagePickerButton({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon , color: AppColors.tealGreen,),
          ),
          Text(label),
        ],
      ),
    );
  }
}
