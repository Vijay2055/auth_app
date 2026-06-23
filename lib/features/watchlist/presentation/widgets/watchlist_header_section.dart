import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "Watchlists ⭐",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium,
              ),

              const SizedBox(height: 6),

              Text(
                "Track, analyze and stay ahead",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium,
              )
            ],
          ),
        ),

        CircleAvatar(
          backgroundColor: AppTheme.cardDark,
          child: Icon(Icons.search),
        ),

        const SizedBox(width: 12),

        CircleAvatar(
          backgroundColor: AppTheme.cardDark,
          child: Icon(Icons.more_vert),
        )
      ],
    );
  }
}