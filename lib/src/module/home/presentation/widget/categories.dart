import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/config/constant/constant.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget(
      {super.key,
      required this.assetSvgName,
      required this.title,
      this.file,
      required this.sizeData, required this.index});
  final String assetSvgName;
  final String title;
  final int? file;
  final double sizeData;
  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final bgCategory = CategoryType.values[index].backgroundColor;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: SizedBox(
        width: size.width * 0.37,
        child: Card(
          color: Colors.white,
          shadowColor: Colors.white,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title , style: AppTextStyles.caption,),
                const Gap(10),
                Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: bgCategory.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20)),
                    child: SvgPicture.asset(
                      assetSvgName,
                      width: 24,
                      height: 24,
                    )),
                const Gap(10),
                Text("${file ?? 0} Files"),
                const Gap(10),
                Text("${sizeData.toStringAsFixed(0)} MB", style: AppTextStyles.caption,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
