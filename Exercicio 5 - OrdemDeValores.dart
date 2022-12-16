class NumberInOrder {
  double? realValueOne;
  double? realValueTwo;
  double? realValueThree;

  String sortedNumbers() {
    if (realValueOne != null && realValueTwo != null && realValueThree != null) {
      if (realValueOne! >= realValueTwo! && realValueTwo! >= realValueThree!) {
        return '$realValueOne, $realValueTwo, $realValueThree';
      } else if (realValueTwo! > realValueOne! && realValueOne! > realValueThree!) {
        return '$realValueTwo, $realValueOne, $realValueThree';
      } else if (realValueThree! > realValueOne! && realValueThree! > realValueTwo! && realValueTwo! > realValueOne!) {
        return '$realValueThree, $realValueTwo, $realValueOne';
      } else {
        return '$realValueTwo, $realValueThree, $realValueOne ';
      }
    }
    return "Valores Irregulares";
  }
}

void main() {
  final sortedNumbers = NumberInOrder();
  sortedNumbers.realValueOne = 1;
  sortedNumbers.realValueTwo = 2;
  sortedNumbers.realValueThree = 1;

  print(sortedNumbers.sortedNumbers());
}
