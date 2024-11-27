import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //listview widget is better than the column widget because it renders the items only when needed instead of rendering them all at once like the column widget does. this can be especially useful when we have extremely long lists that we want to display, or don't know the full length of the list that we want to display.
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.5),
          margin: EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal), //get the horizontal margin data from cardTheme, it may be null, or dart thinks so, so exclamation mark added.
        ), //to use theme color scheme anywhere
        onDismissed: (direction) {
          onRemoveExpense(expenses[index]);
        },
        child: ExpenseItem(expense: expenses[index]),
      ), // the => operator acts as a "quick" function that only has to return one thing.
    );
  }
}
