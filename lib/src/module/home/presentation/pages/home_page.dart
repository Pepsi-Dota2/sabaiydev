import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/widgets/bottom_sheet.dart';
import 'package:sabaiydev/src/core/widgets/title_service.dart';
import 'package:sabaiydev/src/module/files/domain/model/file_images.dart';
import 'package:sabaiydev/src/module/files/domain/model/filter_type_model.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/custom_skeleton.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/filter_date.dart';
import 'package:sabaiydev/src/module/home/domain/model/category_model.dart';
import 'package:sabaiydev/src/module/home/domain/model/storage_model.dart';
import 'package:sabaiydev/src/module/home/presentation/cubit/home_cubit.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/categories.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/piechart_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget implements AutoRouteWrapper {
  const HomePage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final StorageModel storage = StorageModel.mockStorageData;
    final List<CategoryModel> category = CategoryModel.mockCategoryData;
    final size = MediaQuery.of(context).size;
    final cubit = context.read<HomeCubit>();
    final filterData = FilterTypeModel.getMockFilterTypeData;
    final mockData = FileImagesModel.fileImages;
    return Scaffold(
      appBar: AppBar(
        title: Text("home page"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.download_outlined)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.notifications_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person_outlined)),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PieChartWidget(
                    valueUsed: storage.valueUsed,
                    valueFree: storage.valueFree,
                    calculateValue: storage.calculateValue,
                    usedSpace: storage.valueUsed,
                    freeSpace: storage.freeSpace,
                    calculateusePercentage: storage.calculateusePercentage,
                  ),
                  const Gap(20),
                  const TitleServiceWidget(title: "category"),
                  const Gap(20),
                  SizedBox(
                    height: size.height * 0.2,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: category.length,
                      itemBuilder: (BuildContext context, int index) {
                        final CategoryModel categoryModel = category[index];
                        return CategoriesWidget(
                          title: categoryModel.title,
                          assetSvgName: categoryModel.assetSvgName,
                          sizeData: categoryModel.sizeData,
                          index: index,
                        );
                      },
                      physics: const BouncingScrollPhysics(),
                    ),
                  ),
                  const Gap(20),
                  TitleServiceWidget(
                    title: "Recent Files",
                    icons:
                        state.onClick ? Icons.more_vert : Icons.grid_view_sharp,
                    size: 30,
                    onPress: () {
                      cubit.onClick();
                    },
                  ),
                  const Gap(20),
                  FilterDate(
                    label: filterData.first.name,
                    onClick: state.onClick,
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
                  ),
                  const Gap(20),
                  state.onClick
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
                                  child: CachedNetworkImage(
                                    imageUrl: data.image,
                                    fit: BoxFit.cover,
                                    width: size.width * 0.2,
                                    placeholder: (context, url) =>
                                        const CustomSkeleton(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                                title: Text(data.name),
                                subtitle: Text(data.startedDate.toString()),
                                trailing: IconButton(
                                  onPressed: () {},
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
                            return InkWell(
                              onLongPress: () {},
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Column(
                                  children: [
                                    CachedNetworkImage(
                                      imageUrl: mockData.image,
                                      fit: BoxFit.fitWidth,
                                      height: size.height * 0.1,
                                      width: size.width * 1,
                                      placeholder: (context, url) =>
                                          const CustomSkeleton(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
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
                                          onPressed: () {},
                                          icon: const Icon(Icons.more_vert),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void showCustomBottomSheet({
    required BuildContext context,
    required double height,
    required Widget content,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => CustomBottomSheet(
        height: height,
        content: content,
      ),
    );
  }
}
