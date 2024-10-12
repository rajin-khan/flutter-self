import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //listview widget is better than the column widget because it renders the items only when needed instead of rendering them all at once like the column widget does. this can be especially useful when we have extremely long lists that we want to display, or don't know the full length of the list that we want to display.
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expense: expenses[index]), // the => operator acts as a "quick" function that only has to return one thing. 
    );
  }
}