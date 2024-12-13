import 'dart:io';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sabaiydev/src/core/config/constant/app_color.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';
import 'package:sabaiydev/src/core/widgets/bottom_sheets.dart';
import 'package:sabaiydev/src/module/files/presentation/cubit/file_cubit.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/file_page.dart';
import 'package:sabaiydev/src/module/home/presentation/cubit/home_cubit.dart';
import 'package:sabaiydev/src/module/home/presentation/pages/home_page.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/button_picker.dart';
import 'package:sabaiydev/src/module/shared/presentation/pages/shared_page.dart';
import 'package:sabaiydev/src/module/short/presentation/pages/short_page.dart';

@RoutePage()
class DashBoardPage extends StatelessWidget implements AutoRouteWrapper {
  const DashBoardPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => FileCubit(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<HomeCubit>();
    final size = MediaQuery.of(context).size;
    final PageController pageController = PageController();

    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            context: context,
            enableDrag: true,
            isScrollControlled: true,
            builder: (context) => Container(
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        ReusableImagePickerButton(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          color: AppColors.tealLight.withOpacity(0.3),
                          icon: Icons.image,
                          label: "Gallery",
                          onPressed: () {
                            cubit.pickImage(source: ImageSource.gallery);
                          },
                        ),
                        const Gap(20),
                        ReusableImagePickerButton(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          color: AppColors.tealLight.withOpacity(0.3),
                          icon: Icons.camera,
                          label: "Camera",
                          onPressed: () {
                            cubit.pickImage(source: ImageSource.camera);
                          },
                        ),
                        const Gap(20),
                        ReusableImagePickerButton(
                          height: size.height * 0.1,
                          width: size.width * 0.2,
                          color: AppColors.tealLight.withOpacity(0.3),
                          icon: Icons.folder,
                          label: "Folder",
                          onPressed: () {
                            // cubit.pickFolder();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: AppColors.primary,
        ),
      ),
      bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return AnimatedBottomNavigationBar(
            icons: const [
              Icons.home,
              Icons.file_copy,
              Icons.share,
              Icons.short_text
            ],
            activeIndex: state.index,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 32,
            rightCornerRadius: 32,
            activeColor: AppColors.tealGreen,
            inactiveColor: AppColors.grey,
            onTap: (index) {
              final navbarItem = NavbarItem.values[index];
              cubit.getNavBarItem(navbarItem);
              pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
          );
        },
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          final navbarItem = NavbarItem.values[index];
          cubit.getNavBarItem(navbarItem);
        },
        children: const [
          HomePage(),
          FilePage(),
          SharedPage(),
          ShortPage(),
        ],
      ),
    );
  }
}
