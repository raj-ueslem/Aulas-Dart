import 'dart:math' as math;

class Calculator {
  double? calculateDistance({double? x1, double? x2, double? y1, double? y2}) {
    if (x1 != null && x2 != null && y1 != null && y2 != null) {
      return math.sqrt(math.pow(x1 - x2, 2) + math.pow(y2 - y1, 2));
    }
    return null;
  }
}

void main() {
  final calculate = Calculator();

  print(calculate.calculateDistance(x1: 0, x2: 0, y1: 0, y2: 0));
  print(calculate.calculateDistance(x1: 5, x2: 10, y1: 34, y2: 22));
  print(calculate.calculateDistance(x1: 49, x2: 19, y1: 71, y2: -100));
  print(calculate.calculateDistance(x1: 45, x2: -30, y1: 0, y2: null));
}
