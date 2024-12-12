import 'package:flutter/material.dart';

class FilterDateWidget extends StatelessWidget {
  const FilterDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        Text("Create date")
      ],
    );
  }
}