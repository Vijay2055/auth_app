import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/data/dummy/performance_dummy.dart';

class PerformanceSection extends StatefulWidget {
  const PerformanceSection({super.key});

  @override
  State<PerformanceSection> createState() => _PerformanceSectionState();
}

class _PerformanceSectionState extends State<PerformanceSection> {
  int selectedIndex = 4; // default highlighted bar

  @override
  Widget build(BuildContext context) {
    return _buildCardWrapper(
      title: 'Performance',
      trailing: const Text(
        'This Week ∨',
        style: TextStyle(color: AppTheme.textSecondary, fontSize: 13),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 180,
            child: BarChart(
              BarChartData(
                maxY: 7,
                minY: 0,
                barTouchData: BarTouchData(
                  enabled: true,
                  handleBuiltInTouches: false,
                  touchCallback: (event, response) {
                    if (response == null || response.spot == null) return;

                    setState(() {
                      selectedIndex = response.spot!.touchedBarGroupIndex;
                    });
                  },
                ),

                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),

                titlesData: FlTitlesData(
                  leftTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  rightTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: const AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

                        return Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            days[value.toInt()],
                            style: const TextStyle(
                              color: AppTheme.textSecondary,
                              fontSize: 11,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                barGroups: PerformanceDummy.getBars(selectedIndex),
              ),
            ),
          ),

          const SizedBox(height: 10),

          // Small insight row (fintech feel)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best day: Friday',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 12,
                ),
              ),
              Text(
                '+18.4% growth',
                style: const TextStyle(
                  color: Color(0xFF4ADE80),
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCardWrapper({
    required String title,
    required Widget trailing,
    required Widget child,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.cardDark,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing,
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}
