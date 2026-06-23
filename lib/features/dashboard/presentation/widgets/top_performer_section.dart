import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class TopPerformerSection extends StatelessWidget {
  const TopPerformerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildCardWrapper(
      title: 'Top Performers',
      trailing: const Text(
        'View All',
        style: TextStyle(color: AppTheme.primaryBlue, fontSize: 13),
      ),
      child: Column(
        children: [
          _buildStockItemRow(
            'AAPL',
            'Apple Inc.',
            '+18.53%',
            '₹ 1,20,000.00',
            '100 Shares',
          ),
          const Divider(color: Colors.white10, height: 20),
          _buildStockItemRow(
            'TSLA',
            'Tesla Inc.',
            '+15.21%',
            '₹ 85,000.00',
            '20 Shares',
          ),

          const Divider(color: Colors.white10, height: 20),
          _buildStockItemRow(
            'TSLA',
            'Tesla Inc.',
            '+15.21%',
            '₹ 85,000.00',
            '20 Shares',
          ),

          const Divider(color: Colors.white10, height: 20),
          _buildStockItemRow(
            'TSLA',
            'Tesla Inc.',
            '+15.21%',
            '₹ 85,000.00',
            '20 Shares',
          ),

          const Divider(color: Colors.white10, height: 20),
          _buildStockItemRow(
            'TSLA',
            'Tesla Inc.',
            '+15.21%',
            '₹ 85,000.00',
            '20 Shares',
          ),
        ],
      ),
    );
  }
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
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

Widget _buildStockItemRow(
  String ticker,
  String name,
  String change,
  String value,
  String sub,
) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white10,
            radius: 18,
            child: Text(ticker[0], style: const TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ticker,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                name,
                style: const TextStyle(
                  color: AppTheme.textSecondary,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            change,
            style: const TextStyle(
              color: AppTheme.accentGreen,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
          Text(
            sub,
            style: const TextStyle(color: AppTheme.textSecondary, fontSize: 11),
          ),
        ],
      ),
    ],
  );
}
