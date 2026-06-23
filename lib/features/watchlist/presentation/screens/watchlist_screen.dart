import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';
import 'package:flutter_riverpod_clean_architecture/features/watchlist/presentation/widgets/watchlist_header_section.dart';
import 'package:flutter_riverpod_clean_architecture/features/watchlist/presentation/widgets/watchlist_stock_list.dart';
import 'package:flutter_riverpod_clean_architecture/features/watchlist/presentation/widgets/watchlist_summary_card.dart';
import 'package:flutter_riverpod_clean_architecture/features/watchlist/presentation/widgets/watchlist_tab.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [

              SizedBox(height: 20),

              SectionHeader(),

              SizedBox(height: 22),

              SummaryCard(),

              SizedBox(height: 28),

              WatchlistTabs(),

              SizedBox(height: 16),

              StockList(),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
