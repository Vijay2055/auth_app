import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class SectorAllocationSection extends StatelessWidget {
  const SectorAllocationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildCardWrapper(
      title: 'Sector Allocation',
      trailing: const Text(
        'View All',
        style: TextStyle(color: AppTheme.primaryBlue, fontSize: 13),
      ),
      child: Row(
        children: [
          _buildPieChart(),
          const SizedBox(width: 20),
          Expanded(child: _buildLegend()),
        ],
      ),
    );
  }

  /// PIE CHART
  Widget _buildPieChart() {
    return SizedBox(
      height: 120,
      width: 120,
      child: PieChart(
        PieChartData(
          sectionsSpace: 2,
          centerSpaceRadius: 38,
          startDegreeOffset: -90,
          sections: [
            _section(28.5, AppTheme.primaryBlue),
            _section(24.1, AppTheme.accentGreen),
            _section(15.6, AppTheme.accentOrange),
            _section(12.3, AppTheme.accentPurple),
          ],
        ),
      ),
    );
  }

  PieChartSectionData _section(double value, Color color) {
    return PieChartSectionData(
      value: value,
      color: color,
      radius: 18,
      showTitle: false,
    );
  }

  /// LEGEND
  Widget _buildLegend() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        _LegendItem(
          color: AppTheme.primaryBlue,
          label: "Banking",
          percent: "28.5%",
        ),
        SizedBox(height: 8),
        _LegendItem(color: AppTheme.accentGreen, label: "IT", percent: "24.1%"),
        SizedBox(height: 8),
        _LegendItem(
          color: AppTheme.accentOrange,
          label: "Energy",
          percent: "15.6%",
        ),
        SizedBox(height: 8),
        _LegendItem(
          color: AppTheme.accentPurple,
          label: "Auto",
          percent: "12.3%",
        ),
      ],
    );
  }

  /// CARD WRAPPER
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

/// LEGEND WIDGET
class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final String percent;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(radius: 5, backgroundColor: color),
            const SizedBox(width: 8),
            Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                color: AppTheme.textSecondary,
              ),
            ),
          ],
        ),
        Text(
          percent,
          style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
