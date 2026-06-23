import 'package:flutter/material.dart';
import 'package:flutter_riverpod_clean_architecture/core/theme/app_theme.dart';


import 'package:flutter_riverpod_clean_architecture/features/watchlist/presentation/models/stockui_model.dart';

class StockList extends StatelessWidget {
  const StockList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dummyStocks.length + 1,
      itemBuilder: (context, index) {
        if (index == dummyStocks.length) {
          return const AddStockTile();
        }

        return StockTile(
          stock: dummyStocks[index],
        );
      },
    );
  }
}

class StockTile extends StatelessWidget {

  final StockUiModel stock;

  const StockTile({
    super.key,
    required this.stock,
  });

  @override
  Widget build(BuildContext context) {

    final positive = stock.change > 0;

    return Container(
      margin: const EdgeInsets.only(bottom: 14),

      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: AppTheme.cardDark,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          Container(
            width: 58,
            height: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.black,
            ),
            child: Image.asset(stock.logo),
          ),

          SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  stock.symbol,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  stock.company,
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                  ),
                ),

                SizedBox(height: 6),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),

                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(.15),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Text(stock.sector),
                )
              ],
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              Text(
                "₹ ${stock.price}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              SizedBox(height: 4),

              Text(
                "Target ₹${stock.target}",
                style: TextStyle(
                  color: AppTheme.textSecondary,
                ),
              ),

              SizedBox(height: 10),

              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: positive
                      ? AppTheme.accentGreen.withOpacity(.15)
                      : Colors.red.withOpacity(.15),

                  borderRadius: BorderRadius.circular(10),
                ),

                child: Text(
                  "${positive ? "+" : ""}${stock.change}%",
                  style: TextStyle(
                    color: positive
                        ? AppTheme.accentGreen
                        : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}



class AddStockTile extends StatelessWidget {
  const AddStockTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8, bottom: 20),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppTheme.cardDark,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.primaryBlue.withOpacity(.15),
            child: const Icon(
              Icons.add,
              color: AppTheme.primaryBlue,
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Add New Stock",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Track more companies in your watchlist",
                  style: TextStyle(
                    color: AppTheme.textSecondary,
                  ),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
  }
}