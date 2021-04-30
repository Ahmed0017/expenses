import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String date;
  final double amount;
  final double spendingOfPercentage;

  ChartBar(
    this.date,
    this.amount,
    this.spendingOfPercentage,
  );

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraints) {
      return Column(
        children: [
          Container(
            height: constraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text('\$${amount.toStringAsFixed(0)}'),
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.6,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220, 1),
                    border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingOfPercentage,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: constraints.maxHeight * 0.05,
          ),
          Container(
            height: constraints.maxHeight * 0.15,
            child: Text('${date.substring(0, 1)}'),
          )
        ],
      );
    });
  }
}
