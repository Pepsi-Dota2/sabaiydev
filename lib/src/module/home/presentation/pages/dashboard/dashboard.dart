import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sabaiydev/src/core/config/constant/app_color.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';
import 'package:sabaiydev/src/module/files/presentation/cubit/file_cubit.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/file_page.dart';
import 'package:sabaiydev/src/module/home/presentation/cubit/home_cubit.dart';
import 'package:sabaiydev/src/module/home/presentation/pages/home_page.dart';
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
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: AppColors.primary,
        ),
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          Icons.home,
          Icons.file_copy,
          Icons.share,
          Icons.short_text
        ],
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          if (index == 0) {
            cubit.getNavBarItem(NavbarItem.home);
          } else if (index == 1) {
            cubit.getNavBarItem(NavbarItem.file);
          } else if (index == 2) {
            cubit.getNavBarItem(NavbarItem.share);
          } else if (index == 3) {
            cubit.getNavBarItem(NavbarItem.short);
          }
        },
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state.navbarItem == NavbarItem.home) {
            return const HomePage();
          } else if (state.navbarItem == NavbarItem.file) {
            return const FilePage();
          } else if (state.navbarItem == NavbarItem.share) {
            return const SharedPage();
          } else if (state.navbarItem == NavbarItem.short) {
            return const ShortPage();
          }
          return const Center(child: Text("Page Not Found"));
        },
      ),
    );
  }
}
