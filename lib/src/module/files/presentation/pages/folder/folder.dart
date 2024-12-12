import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FolderTabPage extends StatelessWidget {
  const FolderTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
      child: Column(
        children: [
          Container(
            child: Text("Hello folder"),
          ),
        ],
      ),
    );
  }
}
