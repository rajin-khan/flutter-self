import 'package:flutter/material.dart';

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
          TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
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
