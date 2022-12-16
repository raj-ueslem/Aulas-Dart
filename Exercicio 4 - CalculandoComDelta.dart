import 'dart:math' as math;

class HighSchoolCalculator {
  double? a;
  double? b;
  double? c;

  bool verify() {
    return a != null && b != null && c != null;
  }

  num calculateDelta() => math.sqrt(math.pow(-b!, 2) - 4 * (a! * c!));

  num calculatePositiveDelta(num delta) => (-b! + math.sqrt(math.pow(-b!, 2) - 4 * (a! * c!))) / (2 * a!);

  num calculateNegativeDelta(num delta) => (-b! - math.sqrt(math.pow(-b!, 2) - 4 * (a! * c!))) / (2 * a!);

  String showResult() {
    if (verify()) {
      if (!calculateDelta().isNaN) {
        if (a != 0) {
          num delta = calculateDelta();
          num x1 = calculatePositiveDelta(delta);
          num x2 = calculateNegativeDelta(delta);
          return "Delta: $delta,\nX1 é: $x1,\nX2 é: $x2";
        }
        return "valor de A não pode ser zero";
      } else {
        return "A raiz de delta foi zero";
      }
    }
    return "Valor não informado";
  }
}

void main() {
  final high = HighSchoolCalculator();
  high.a = 1;
  high.b = 2;
  high.c = -15;
  print(high.showResult());
//   print(high.calculateDelta());
//   print(high.calculatePositiveDelta());
//   print(high.calculateNegativeDelta());
}
