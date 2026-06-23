import 'package:flutter/material.dart';

class HoldingFilterChips extends StatefulWidget {
  const HoldingFilterChips({super.key});

  @override
  State<HoldingFilterChips> createState() => _HoldingFilterChipsState();
}

class _HoldingFilterChipsState extends State<HoldingFilterChips> {
  int selectedIndex = 0;

  final List<String> filters = [
    "All",
    "Profit",
    "Loss",
    "Banking",
    "IT",
    'Energy',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,

        itemCount: filters.length,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 14),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF2563EB)
                    : const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                filters[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
