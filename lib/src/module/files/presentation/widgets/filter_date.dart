import 'package:flutter/material.dart';

class FilterDate extends StatelessWidget {
  const FilterDate({
    super.key,
    this.onFilterDate,
    this.onListTap,
    required this.label,
    required this.onClick,
  });

  final Function()? onFilterDate;
  final VoidCallback? onListTap;
  final bool onClick;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: onFilterDate,
            child: Row(
              children: [
                const Icon(Icons.arrow_drop_down, color: Colors.black),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: onListTap,
            child: Icon(
                onClick ? Icons.list : Icons.grid_view_sharp,
                color: Colors.black),
          ),
        ],
      ),
    );
  }
}
