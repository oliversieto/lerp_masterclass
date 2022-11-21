class LerpModel {
  final percentageTotal = 100;
  final double start;
  final double end;
  final double percentage;
  LerpModel({
    required this.start,
    required this.end,
    required this.percentage,
  });

  double calculate() {
    final percentageDifference = _getPercentageDifferenceFromTotal();
    final startPercentage = _getPercentage(start, percentageDifference);
    final endPercentage = _getPercentage(end, percentage);
    return startPercentage + endPercentage;
  }

  double _getPercentage(double value, double percentage) {
    return (value * percentage) / percentageTotal;
  }

  double _getPercentageDifferenceFromTotal() {
    return percentageTotal - percentage;
  }
}
