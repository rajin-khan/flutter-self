import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({required this.expense, super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        //since card does not have its own padding, we wrap its child elements with the padding widget.
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              expense.title,
              style: Theme.of(context).textTheme.titleLarge, //to use theme color scheme anywhere
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                    '\$${expense.amount.toStringAsFixed(2)}'), //you could have just used toString to typecast here, but this just restricts the decimal places to 2. also, you are injecting the value into a string output, so you use the dollar sign, which is only necessary because we want to display a dollar sign before it, which is done by using the escape sequence since dollar is already a reserved keyword.
                const Spacer(), //special widget that takes all the remaining space in between two widgets.
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense
                        .formattedDate) //since getter is a special method, you don't need to add parentheses here
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
