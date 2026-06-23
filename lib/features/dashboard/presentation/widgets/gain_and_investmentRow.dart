import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class GainAndInvestmentrow extends StatelessWidget {
  const GainAndInvestmentrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 110,
            child: _buildCard(
              title: 'Total Invested',
              icon: Icons.account_balance_wallet,
              iconColor: AppTheme.primaryBlue,
              value: '₹ 10,00,000.00',
              subtitle: null,
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: SizedBox(
            height: 110,
            child: _buildCard(
              title: 'Total Gain',
              icon: Icons.trending_up,
              iconColor: AppTheme.accentGreen,
              value: '₹ 2,45,320.50',
              subtitle: '+24.53% ↗',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCard({
    required String title,
    required IconData icon,
    required Color iconColor,
    required String value,
    String? subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(14), // reduced padding
      decoration: BoxDecoration(
        color: AppTheme.cardDark,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppTheme.textSecondary,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(width: 6),
              Icon(icon, size: 16, color: AppTheme.primaryBlue),
            ],
          ),

          const SizedBox(height: 10),

          FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppTheme.textPrimary,
              ),
            ),
          ),

          if (subtitle != null) ...[
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: AppTheme.accentGreen,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
