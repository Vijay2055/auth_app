import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/features/holdings/presentation/widgets/filter_chips.dart';
import 'package:flutter_riverpod_clean_architecture/features/holdings/presentation/widgets/holding_card.dart';

class HoldingsScreen extends StatelessWidget {
  const HoldingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 🔵 APP BAR AREA (custom, NOT AppBar widget)
        Container(
          padding: const EdgeInsets.only(
            top: 50,
            left: 16,
            right: 16,
            bottom: 12,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Holdings",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
            ],
          ),
        ),

        // 🔍 SEARCH BAR
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search holdings...",
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
              ),
            ),
          ),
        ),

        const SizedBox(height: 12),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: HoldingFilterChips(),
        ),

        const SizedBox(height: 12),

        // 📊 LIST
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 10,
            itemBuilder: (context, index) {
              return HoldingCard();
            },
          ),
        ),
      ],
    );
  }
}
