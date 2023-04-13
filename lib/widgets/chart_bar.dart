import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendinAmount;
  final double spendingPercentageOfTotal;
  const ChartBar(this.label, this.spendinAmount, this.spendingPercentageOfTotal,
      {super.key});

  @override
  Widget build(BuildContext context) {
    // we are using layoutbuilder for the layout of the chart bar
    return LayoutBuilder(builder: (ctx, contstraints) {
      // contraint define how widget are rendered on the screen
      // it check for the height and width
      return Column(
        children: [
          SizedBox(
            height: contstraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text('\$${spendinAmount.toStringAsFixed(0)}'),
            ),
          ),
          SizedBox(
            height: contstraints.maxHeight * 0.05,
          ),
          SizedBox(
            height: contstraints.maxHeight * 0.6,
            width: 10,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: const Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingPercentageOfTotal,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: contstraints.maxHeight * 0.05,
          ),
          SizedBox(
            height: contstraints.maxHeight * 0.15,
            child: FittedBox(
              child: Text(label),
            ),
          ),
          // const SizedBox(
          //   height: 4,
          // )
        ],
      );
    });
  }
}
