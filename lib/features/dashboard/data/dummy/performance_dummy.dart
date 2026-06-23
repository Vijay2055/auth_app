import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceDummy {
  static List<double> values = [3.2, 2.8, 4.1, 3.5, 5.0, 4.2, 6.0];

  static List<BarChartGroupData> getBars(int selectedIndex) {
    return List.generate(values.length, (i) {
      final isSelected = i == selectedIndex;

      return BarChartGroupData(
        x: i,
        barRods: [
          BarChartRodData(
            toY: values[i],
            width: isSelected ? 14 : 10,
            borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: isSelected
                  ? [
                      const Color(0xFF60A5FA),
                      const Color(0xFF2563EB),
                    ]
                  : [
                      const Color(0xFF93C5FD).withOpacity(0.7),
                      const Color(0xFF3B82F6).withOpacity(0.7),
                    ],
            ),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: 7,
              color: Colors.white.withOpacity(0.04),
            ),
          ),
        ],
      );
    });
  }
}