import 'package:expense_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Seminar Ticket',
        amount: 19.99,
        date: DateTime.now(),
        category: Cat.work),
    Expense(
        title: 'Movie',
        amount: 17.49,
        date: DateTime.now(),
        category: Cat.leisure),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    ); //ctx is the same as context, we just used it to differentiate the two contexts.
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tapsense Financer Protoype'),
        actions: [
          IconButton(
            onPressed:
                _openAddExpenseOverlay, //we don't add parentheses here because flutter needs to execute this function only when pressed, not all the time.
            icon: const Icon(Icons.add_circle),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('Chart'),
          Expanded(
            //the expanded widget must be used here we are trying to display a list (listview) inside another list (the column widget)
            child: ExpensesList(expenses: _registeredExpenses, onRemoveExpense: _removeExpense,),
          ),
        ],
      ),
    );
  }
}
