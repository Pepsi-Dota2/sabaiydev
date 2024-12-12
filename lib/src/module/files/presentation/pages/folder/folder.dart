import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/config/constant/app_color.dart';
import 'package:sabaiydev/src/core/widgets/bottom_sheets.dart';
import 'package:sabaiydev/src/module/files/domain/model/filter_type_model.dart';
import 'package:sabaiydev/src/module/files/domain/model/folder_type.dart';
import 'package:sabaiydev/src/module/files/presentation/cubit/file_cubit.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/filter_date.dart';

@RoutePage()
class FolderTabPage extends StatelessWidget implements AutoRouteWrapper {
  const FolderTabPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => FileCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<FileCubit>();
    final size = MediaQuery.of(context).size;
    final filterData = FilterTypeModel.getMockFilterTypeData;
    final mockData = FolderTypeModel.folderData;
    return BlocBuilder<FileCubit, FileState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                FilterDate(
                  label: "Create date",
                  onFilterDate: () {
                    showCustomBottomSheet(
                      context: context,
                      height: size.height * 0.5,
                      content: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Gap(20),
                            const Text(
                              "Sort By",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Divider(),
                            const Gap(16),
                            Expanded(
                              child: ListView.builder(
                                itemCount: filterData.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(filterData[index].name),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  onClick: state.onListFolderTab,
                  onListTap: () {
                    cubit.onListFolderTabChange();
                  },
                ),
                const Gap(16),
                state.onListFolderTab
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mockData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final data = mockData[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: ListTile(
                              leading: Icon(
                                data.icon,
                                color: AppColors.tealGreen,
                              ),
                              title: Text(data.name),
                              subtitle: Text(data.startedDate ?? ""),
                              trailing: IconButton(
                                onPressed: () {
                                  showCustomBottomSheet(
                                      context: context,
                                      height: size.height * 0.5,
                                      content: Container());
                                },
                                icon: const Icon(Icons.more_vert),
                              ),
                            ),
                          );
                        },
                      )
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mockData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final mockData = FolderTypeModel.folderData[index];
                          return Column(
                            children: [
                              Container(
                                height: size.height * 0.1,
                                width: size.width * 1,
                                decoration: BoxDecoration(
                                    color: AppColors.grey.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  mockData.icon,
                                  size: 60,
                                  color: AppColors.tealGreen,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    mockData.name.length > 15
                                        ? '${mockData.name.substring(0, 15)}...'
                                        : mockData.name,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      showCustomBottomSheet(
                                          context: context,
                                          height: size.height * 0.5,
                                          content: Container());
                                    },
                                    icon: const Icon(Icons.more_vert),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      )
              ],
            ),
          ),
        );
      },
    );
  }
}
