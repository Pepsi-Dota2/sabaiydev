import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/config/constant/app_color.dart';
import 'package:sabaiydev/src/core/config/constant/constant.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key, required this.viewDeleted});
  final Function() viewDeleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonsTabBar(
            height: 50,
            width: 146,
            unselectedBackgroundColor: Colors.white,
            labelStyle: AppTextStyles.secondTabbar,
            unselectedLabelStyle: AppTextStyles.titleTabbar,
            borderWidth: 0,
            unselectedBorderColor: Colors.white,
            radius: 100,
            contentCenter: true,
            tabs: const [
              Tab(text: "Files"),
              Tab(text: "Folders"),
            ],
          ),
          const Gap(10),
          InkWell(
            onTap: viewDeleted,
            borderRadius: BorderRadius.circular(12),
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.lightTeal.withOpacity(0.2),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Icon(
                FontAwesomeIcons.trashCan,
                color: AppColors.lightTeal,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
