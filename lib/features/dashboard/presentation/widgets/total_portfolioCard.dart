import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class TotalPortfolioCard extends StatelessWidget {
  const TotalPortfolioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          colors: [Color(0xFF17156D), Color(0xFF2563EB)],
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Stack(
          children: [
            // Chart
            Positioned(
              right: 10,
              bottom: 10,
              top: 50,
              width: 230,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 6,
                  minY: 0,
                  maxY: 5,

                  gridData: const FlGridData(show: false),
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: false),

                  lineTouchData: const LineTouchData(enabled: false),

                  lineBarsData: [
                    LineChartBarData(
                      isCurved: true,
                      curveSmoothness: 0.35,
                      color: Colors.white.withOpacity(0.8),
                      barWidth: 2.5,

                      spots: const [
                        FlSpot(0, 0.6),
                        FlSpot(1, 1.0),
                        FlSpot(2, 0.8),
                        FlSpot(3, 2.0), // highlighted point
                        FlSpot(4, 2.4),
                        FlSpot(5, 2.2),
                        FlSpot(6, 4.1),
                      ],

                      dotData: FlDotData(
                        show: true,
                        checkToShowDot: (spot, barData) {
                          return spot.x == 3;
                        },
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 4,
                            color: Colors.white,
                            strokeWidth: 0,
                          );
                        },
                      ),

                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                ),
              ),
            ),

            // Content
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Total Portfolio Value',
                        style: TextStyle(
                          color: Colors.white.withOpacity(.85),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.visibility_outlined,
                        size: 16,
                        color: Colors.white.withOpacity(.85),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '₹ 12,45,320',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            height: 1,
                          ),
                        ),
                        TextSpan(
                          text: '.50',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    '+ ₹1,05,320.50 (8.51%) ↗',
                    style: TextStyle(
                      color: Color(0xFF4ADE80),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // Percentage Badge
            Positioned(
              right: 16,
              bottom: 18,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF3B82F6).withOpacity(.20),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.trending_up, color: Color(0xFF4ADE80), size: 14),
                    SizedBox(width: 4),
                    Text(
                      '8.51%',
                      style: TextStyle(
                        color: Color(0xFF4ADE80),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
