import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/config/constant/constant.dart';

class PieChartWidget extends StatelessWidget {
  const PieChartWidget(
      {super.key,
      required this.valueUsed,
      required this.valueFree,
      required this.calculateValue,
      required this.usedSpace,
      required this.freeSpace,
      required this.calculateusePercentage});
  final double valueUsed;
  final double valueFree;
  final double calculateValue;
  final double usedSpace;
  final int freeSpace;
  final double calculateusePercentage;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      shadowColor: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.teal,
                  size: 16,
                ),
                SizedBox(width: 4), 
                Text(
                  'Premium',
                  style: AppTextStyles.premium, 
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.18,
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        PieChart(
                          PieChartData(
                            sectionsSpace: 0,
                            centerSpaceRadius: 40,
                            sections: [
                              PieChartSectionData(
                                value: valueUsed,
                                color: Colors.teal,
                                title: '',
                                radius: 20,
                              ),
                              PieChartSectionData(
                                value: valueFree,
                                color: Colors.grey.shade200,
                                title: '',
                                radius: 20,
                              ),
                            ],
                            startDegreeOffset: 270,
                          ),
                        ),
                        Text('${calculateusePercentage.toStringAsFixed(0)}%',
                            style: AppTextStyles.heading1),
                      ],
                    ),
                  ),
                  // Right side - Legend
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Used Space
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text('Used Space',
                                  style: AppTextStyles.description),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text("${valueUsed.toInt()} MB",
                              style: AppTextStyles.bodyText),
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text('Free Space',
                                  style: AppTextStyles.description),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text("${freeSpace} TB", style: AppTextStyles.bodyText),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
