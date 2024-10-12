import 'package:uuid/uuid.dart'; //uuid is a package available in flutter to use for creating unique IDs.

const uuid = Uuid(); //unique id object created with its constructor.

enum Category { food, travel, leisure, work }

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
  final Category category;
}
