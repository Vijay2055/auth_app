import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class HoldingWatchlistRow extends StatelessWidget {
  const HoldingWatchlistRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            child: _buildMetricTile(
              'Holdings',
              '15 Companies',
              Icons.pie_chart_outline,
              AppTheme.accentPurple,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: SizedBox(
            child: _buildMetricTile(
              'Watchlist',
              '6 Items',
              Icons.star_border,
              AppTheme.accentOrange,
            ),
          ),
        ),
      ],
    );
  }
}

Widget _buildMetricTile(
  String title,
  String subtitle,
  IconData icon,
  Color iconBg,
) {
  return Container(
    padding: const EdgeInsets.all(12), // reduced padding
    decoration: BoxDecoration(
      color: AppTheme.cardDark,
      borderRadius: BorderRadius.circular(16),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: iconBg.withOpacity(0.15),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: iconBg, size: 18),
        ),

        const SizedBox(width: 10),

        // 👇 IMPORTANT FIX
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              FittedBox(
                fit: BoxFit.scaleDown,
                alignment: Alignment.centerLeft,
                child: Text(
                  subtitle,
                  style: const TextStyle(
                    color: AppTheme.textPrimary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
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
