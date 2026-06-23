import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/constants/app_constants.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;

  const MainScaffold({super.key, required this.child});

  int _getIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;

    // if (location.startsWith(AppConstants.dashboard)) return 1;
    if (location.startsWith(AppConstants.holding)) return 1;
    if (location.startsWith(AppConstants.watchlist)) return 2;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final index = _getIndex(context);

    return Scaffold(
      body: child,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          switch (i) {
            case 0:
              context.go(AppConstants.dashboard);
              break;
            case 1:
              context.go(AppConstants.holding);
              break;
            case 2:
              context.go(AppConstants.watchlist);
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Dashboard'),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Holdings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border),
            label: 'Watchlist',
          ),
        ],
      ),
    );
  }
}
