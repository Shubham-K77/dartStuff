enum finance_listed { Income, Expense }

class Finance {
  final int id;
  final String title;
  final String desc;
  final DateTime createdAt;
  final double amount;
  final finance_listed type;
  //Constructor
  Finance(
  {
    required this.id,
    required this.title,
    required this.desc,
    required this.createdAt,
    required this.amount,
    required this.type,
  });
  //Factory Constructor
  factory Finance.fromMap(Map<String, dynamic> map) {
    return Finance(
      id: map['id']?.toInt() ?? 0,
      title: map['title'],
      desc: map['desc'],
      createdAt: DateTime.parse(map['createdAt']),
      amount: map['amount'],
      type:
          map['type'] == 'Income'
              ? finance_listed.Income
              : finance_listed.Expense,
    );
  }
}
