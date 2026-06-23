import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';
import 'package:fl_chart/fl_chart.dart';

// class SummaryCard extends StatelessWidget {
//   const SummaryCard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 210,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(22),
//         gradient: const LinearGradient(
//           colors: [Color(0xff162447), Color(0xff0F3460)],
//         ),
//       ),

//       padding: const EdgeInsets.all(22),

//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Total Watchlist Value",
//             style: Theme.of(context).textTheme.bodyMedium,
//           ),

//           SizedBox(height: 12),

//           Text(
//             "₹ 8,45,250.75",
//             style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
//           ),

//           SizedBox(height: 8),

//           Row(
//             children: [
//               Icon(Icons.trending_up, color: AppTheme.accentGreen),

//               SizedBox(width: 6),

//               Text(
//                 "+ ₹75,320.50 (9.79%)",
//                 style: TextStyle(
//                   color: AppTheme.accentGreen,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),

//           Spacer(),

//           SizedBox(height: 45, child: MiniGraph()),
//         ],
//       ),
//     );
//   }
// }

class SummaryCard extends StatelessWidget {
  const SummaryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff162447), Color(0xff0F3460)],
        ),
      ),
      child: Row(
        children: [
          /// Left Side
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Watchlist Value",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),

                const SizedBox(height: 14),

                const Text(
                  "₹ 8,45,250.75",
                  style: TextStyle(
                    fontSize: 28, // Smaller than before
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: const [
                    Icon(
                      Icons.trending_up,
                      color: AppTheme.accentGreen,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      "+ ₹75,320.50 (9.79%)",
                      style: TextStyle(
                        color: AppTheme.accentGreen,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 16),

          /// Right Side
          Expanded(
            flex: 4,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: MiniGraph(),
                ),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: AppTheme.accentGreen.withOpacity(.15),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    "↗ 9.79%",
                    style: TextStyle(
                      color: AppTheme.accentGreen,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MiniGraph extends StatelessWidget {
  const MiniGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 6,
        minY: 0,
        maxY: 7,

        gridData: const FlGridData(show: false),
        titlesData: const FlTitlesData(show: false),
        borderData: FlBorderData(show: false),

        lineTouchData: const LineTouchData(enabled: false),

        lineBarsData: [
          LineChartBarData(
            isCurved: true,
            color: AppTheme.accentGreen,
            barWidth: 3,

            isStrokeCapRound: true,

            dotData: FlDotData(
              show: true,
              getDotPainter: (spot, percent, barData, index) {
                if (index == 6) {
                  return FlDotCirclePainter(
                    radius: 4,
                    color: AppTheme.accentGreen,
                    strokeWidth: 2,
                    strokeColor: Colors.white,
                  );
                }

                return FlDotCirclePainter(
                  radius: 0,
                  color: Colors.transparent,
                  strokeWidth: 0,
                  strokeColor: Colors.transparent,
                );
              },
            ),

            belowBarData: BarAreaData(
              show: true,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppTheme.accentGreen.withOpacity(.25),
                  AppTheme.accentGreen.withOpacity(0),
                ],
              ),
            ),

            spots: const [
              FlSpot(0, 2),
              FlSpot(1, 3),
              FlSpot(2, 2),
              FlSpot(3, 5),
              FlSpot(4, 4),
              FlSpot(5, 6),
              FlSpot(6, 7),
            ],
          ),
        ],
      ),
    );
  }
}
