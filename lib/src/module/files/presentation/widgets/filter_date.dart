// import 'package:flutter/material.dart';

// class FilterDate extends StatelessWidget {
//   const FilterDate(
//       {super.key,
//       this.onBackTap,
//       this.onListTap,
//       required this.label,
//       this.onIconChange});

//   final VoidCallback? onBackTap;
//   final VoidCallback? onListTap;
//   final String label;
//   final VoidCallback? onIconChange;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           GestureDetector(
//             onTap: onBackTap,
//             child: Row(
//               children: [
//                 const Icon(Icons.arrow_drop_down, color: Colors.black),
//                 const SizedBox(width: 8),
//                 Text(
//                   label,
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodyLarge
//                       ?.copyWith(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//           GestureDetector(
//             onTap: onListTap,
//             child: Icon(
//                 onIconChange == null
//                     ? Icons.arrow_drop_down
//                     : Icons.arrow_drop_up,
//                 color: Colors.black),
//           ),
//         ],
//       ),
//     );
//   }
// }
