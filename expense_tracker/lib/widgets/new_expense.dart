import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});
  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController =
      TextEditingController(); //creates an object optimised for handling input values

  final _amountController = TextEditingController();

  DateTime? _selectedDate;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final first = DateTime(now.year - 1, now.month, now.day);
    final pickedDate = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: first,
      lastDate: now,
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    //used to get rid of the input controller object, or takes up space in memory and causes app to crash.
    _titleController
        .dispose(); //only stateful widgets can implement dispose methods
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController, //for handling input
            maxLength: 50,
            //keyboardType: TextInputType.text, //basic text type by default, so no need to set this separately
            decoration: const InputDecoration(
              label: Text('Title'),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _amountController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefix: Text('\$ '), //comes before the input
                    label: Text('Amount'),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(_selectedDate == null ? 'No Date Selected': formatter.format(_selectedDate!)), //with the exclamation mark, we're telling Dart that it won't be a null value.
                    IconButton(
                      onPressed: _presentDatePicker,
                      icon: const Icon(Icons.calendar_month_rounded),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(
                      context); //closes currently open menu and revers to last one
                },
                child: const Text('Cancel'),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('Save Expense'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
