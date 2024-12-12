import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';
import 'package:sabaiydev/src/module/files/presentation/cubit/file_cubit.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/file/file_page.dart';
import 'package:sabaiydev/src/module/files/presentation/pages/folder/folder.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/tab_bar.dart';

@RoutePage()
class FilePage extends StatelessWidget implements AutoRouteWrapper {
  const FilePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => FileCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Define tab contents
    final List<Widget> tabItems = [
      const FileTabPage(),
      const FolderTabPage(),
    ];

    final cubit = context.read<FileCubit>();

    return DefaultTabController(
      length: TabbarFile.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Files"),
        ),
        body: BlocBuilder<FileCubit, FileState>(
          builder: (context, state) {
            return Column(
              children: [
                TabBarWidget(
                  viewDeleted: () {},
                ),
                Expanded(
                  child: TabBarView(
                    children: tabItems,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
