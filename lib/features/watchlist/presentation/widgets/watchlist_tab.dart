import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class WatchlistTabs extends StatelessWidget {
  const WatchlistTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Text(
          "My Watchlist",
          style: TextStyle(
            color: AppTheme.primaryBlue,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        SizedBox(width: 24),

        Text(
          "Market Watch",
          style: TextStyle(
            color: AppTheme.textSecondary,
            fontSize: 18,
          ),
        ),

        Spacer(),

        Icon(Icons.edit_outlined),

        SizedBox(width: 18),

        Icon(Icons.tune),
      ],
    );
  }
}