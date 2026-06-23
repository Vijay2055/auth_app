import 'package:flutter/material.dart';

class HoldingCard extends StatelessWidget {
  const HoldingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF0F172A),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(0.04)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// TOP SECTION
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.orange.withOpacity(0.15),
                    child: const Text(
                      "R",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "RELIANCE",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        "Reliance Industries Ltd.",
                        style: TextStyle(color: Colors.white60, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFF14532D).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "Energy",
                  style: TextStyle(
                    color: Color(0xFF4ADE80),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          /// MIDDLE GRID
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _InfoTile(title: "Shares", value: "100"),
              _InfoTile(title: "Avg Price", value: "₹2,500"),
              _InfoTile(title: "Current", value: "₹2,800"),
            ],
          ),

          const SizedBox(height: 16),

          Divider(),

          /// BOTTOM SECTION (MATCH IMAGE STYLE)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// VALUE
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Value",
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "₹2,80,000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              /// GAIN
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text(
                    "Gain",
                    style: TextStyle(color: Colors.white60, fontSize: 12),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "+12.00%",
                    style: TextStyle(
                      color: Color(0xFF4ADE80),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  final String title;
  final String value;

  const _InfoTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white60, fontSize: 12),
        ),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
