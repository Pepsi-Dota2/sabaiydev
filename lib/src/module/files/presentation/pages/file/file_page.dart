import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sabaiydev/src/module/files/presentation/widgets/filter_date.dart';

@RoutePage()
class FileTabPage extends StatelessWidget {
  const FileTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          // FilterDate(
          //   label: "Create date",
          //   onBackTap: () {
          //     print("back");
          //   },
          //   onListTap: () {
          //     print("list");
          //   },
          //   onIconChange: () {
              
          //   },
          // )
        ],
      ),
    );
  }
}
