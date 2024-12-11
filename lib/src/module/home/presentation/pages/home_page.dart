import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sabaiydev/src/core/widgets/title_service.dart';
import 'package:sabaiydev/src/module/home/domain/model/category_model.dart';
import 'package:sabaiydev/src/module/home/domain/model/storage_model.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/categories.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/piechart_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageModel storage = StorageModel.mockStorageData;
    final List<CategoryModel> category = CategoryModel.mockCategoryData;
    final size = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
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
              const TitleServiceWidget(title: "Recent Files")
            ],
          ),
        ),
      ),
    );
  }
}
