enum EExpenseType {
  food("Food"),
  transport("Transport"),
  procurement("Procurement"),
  rest("Rest"),
  investment("Investment");

  const EExpenseType(this.text);
  final String text;
}

class ExpenseItem {
  String? description;
  double? cost;
  EExpenseType? type;

  ExpenseItem({this.description, this.cost, this.type});

  factory ExpenseItem.fromJson(Map<String, dynamic> parsedJson) {
    return ExpenseItem(
      description: parsedJson['description'] ?? "",
      cost: parsedJson['cost'] ?? "",
      type: EExpenseType.values.byName(parsedJson['type']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "description": description,
      "cost": cost,
      "type": type!.name,
    };
  }
}
