import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/gain_and_investmentRow.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/holding_watchlist_row.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/performance_section.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/sector_allocation_section.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/top_performer_section.dart';
import 'package:flutter_riverpod_clean_architecture/features/dashboard/presentation/widgets/total_portfolioCard.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // Custom App Bar section
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 60, 16, 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning,',
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium?.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Bijay Yadav',
                          style: Theme.of(
                            context,
                          ).textTheme.titleMedium?.copyWith(fontSize: 20),
                        ),
                        const SizedBox(width: 6),
                        const Text('👋', style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.notifications_none_outlined,
                            color: AppTheme.textPrimary,
                          ),
                          onPressed: () {},
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: CircleAvatar(
                            radius: 7,
                            backgroundColor: Colors.red,
                            child: Text(
                              '3',
                              style: const TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.settings_outlined,
                        color: AppTheme.textPrimary,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // Core dashboard body container items
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              TotalPortfolioCard(),
              const SizedBox(height: 16),
              GainAndInvestmentrow(),
              const SizedBox(height: 16),
              HoldingWatchlistRow(),
              const SizedBox(height: 24),
              PerformanceSection(),
              const SizedBox(height: 24),
              SectorAllocationSection(),
              const SizedBox(height: 24),
              TopPerformerSection(),
              const SizedBox(height: 40),
            ]),
          ),
        ),
      ],
    );

    // bottomNavigationBar: BottomNavigationBar(
    //   currentIndex: _currentIndex,
    //   onTap: (index) => setState(() => _currentIndex = index),
    //   items: const [
    //     BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.business_center_outlined),
    //       label: 'Holdings',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(Icons.star_border),
    //       label: 'Watchlist',
    //     ),
    //     // BottomNavigationBarItem(
    //     //   icon: Icon(Icons.person_outline),
    //     //   label: 'Profile',
    //     // ),
    //   ],
    // ),
  }

  // UI Component widgets
}
