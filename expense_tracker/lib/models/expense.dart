import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart'; //uuid is a package available in flutter to use for creating unique IDs.
import 'package:intl/intl.dart'; //to view dates properly

final formatter = DateFormat.yMd(); //one of the many formats for dates

const uuid = Uuid(); //unique id object created with its constructor.

enum Cat { food, travel, leisure, work }

const categoryIcons = {
  Cat.food: Icons.ramen_dining_rounded,
  Cat.travel: Icons.flight_takeoff_rounded,
  Cat.leisure: Icons.movie_rounded,
  Cat.work: Icons.work_rounded,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid
            .v4(); //the colon operator can instantiate a value that is not initialized by the constructor. in this case, we call the unique id object, and use one of its methods, v4, to generate a unique string id.

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Cat category;

  String get formattedDate {
    //special getter method used in dart, so get is a special keyword.
    return formatter.format(
        date); //we call the formatter to view the date in a specific way
  }
}

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Cat category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0;

    for (final expense in expenses) {
      //loop through each category and add them, used a for-in loop
      sum += expense.amount;
    }

    return sum;
  }
}
