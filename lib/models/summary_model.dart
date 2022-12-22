class Summary {
  final String? title;
  final int? amount;
  final double? percentage;

  Summary({
    this.title,
    this.amount,
    this.percentage,
  });
}

List demoSummary = [
  Summary(
    title: "Bugün Gelen Rez.",
    amount: 45,
    percentage: 5.25,
  ),
  Summary(
    title: "Dün Gelen Rez.",
    amount: 42,
    percentage: 1.23,
  ),
  Summary(
    title: "Onay Bekleyen Rez.",
    amount: 56,
    percentage: 7.85,
  ),
  Summary(
    title: "Onay Bekleyen Har.",
    amount: 5,
    percentage: 3.72,
  ),
];
