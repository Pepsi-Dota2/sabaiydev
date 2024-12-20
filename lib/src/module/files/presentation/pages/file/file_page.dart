import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';
import 'package:sabaiydev/src/core/widgets/bottom_sheets.dart';
import 'package:sabaiydev/src/core/widgets/custom_bottom_sheet.dart';
import 'package:sabaiydev/src/module/files/domain/model/file_images.dart';
import 'package:sabaiydev/src/module/files/domain/model/filter_type_model.dart';
import 'package:sabaiydev/src/module/files/presentation/cubit/file_cubit.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/custom_skeleton.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/filter_date.dart';

@RoutePage()
class FileTabPage extends StatelessWidget implements AutoRouteWrapper {
  const FileTabPage({super.key});

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
    final mockData = FileImagesModel.fileImages;

    return BlocBuilder<FileCubit, FileState>(
      builder: (context, state) {
        if (state.status == DataStatus.loading) {
          return const CustomSkeleton();
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            const Divider(),
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
                  onClick: state.onListFileTab,
                  onListTap: () {
                    cubit.onListFileTabChange();
                  },
                ),
                const Gap(16),
                state.onListFileTab
                    ? ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: mockData.length,
                        itemBuilder: (BuildContext context, int index) {
                          final data = mockData[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child:Image.asset(
                                  data.image,
                                  fit: BoxFit.cover,
                                  height: size.height * 0.1,
                                  width: size.width * 0.2,
                                ),
                              ),
                              title: Text(data.name),
                              subtitle: Text(data.startedDate.toString()),
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
                          final mockData = FileImagesModel.fileImages[index];
                          final isSelected =
                              state.selectedFiles.contains(mockData);
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Column(
                              children: [
                                Image.asset(
                                  mockData.image,
                                  fit: BoxFit.fitWidth,
                                  height: size.height * 0.1,
                                  width: size.width * 1,
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
                            ),
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
