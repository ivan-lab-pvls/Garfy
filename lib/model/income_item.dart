enum EIncomeType {
  business("Business"),
  salary("Salary"),
  dividends("Dividends"),
  investment("Investment"),
  rent("Rent"),
  freelance("Freelance"),
  ;

  const EIncomeType(this.text);
  final String text;
}

class IncomeItem {
  String? description;
  EIncomeType? type;
  double? cost;

  IncomeItem({this.description, this.cost, this.type});

  factory IncomeItem.fromJson(Map<String, dynamic> parsedJson) {
    return IncomeItem(
      description: parsedJson['description'] ?? "",
      cost: parsedJson['cost'] ?? "",
      type: EIncomeType.values.byName(parsedJson['type']),
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
