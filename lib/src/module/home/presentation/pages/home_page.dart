import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sabaiydev/src/module/home/domain/model/storage_model.dart';
import 'package:sabaiydev/src/module/home/presentation/widget/piechart_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageModel storage = StorageModel.mockStorageData;
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
            )
          ],
        ),
      ),
    );
  }
}
