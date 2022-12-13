class NumberInOrder {
  double? realValueOne;
  double? realValueTwo;
  double? realValueThree;

  String sortedNumbers() {
    if (realValueOne != null && realValueTwo != null && realValueThree != null) {
      if (realValueOne! >= realValueTwo! && realValueOne! >= realValueThree!) {
        if (realValueTwo! > realValueThree!) {
          return '$realValueOne, $realValueTwo, $realValueThree';
        } else {
          return '$realValueOne, $realValueThree, $realValueTwo';
        }
      } else if (realValueTwo! >= realValueOne! &&
          realValueTwo! >= realValueThree!) {
        if (realValueThree! > realValueOne!) {
          return '$realValueTwo, $realValueThree, $realValueOne';
        } else {
          return '$realValueTwo, $realValueOne, $realValueThree';
        }
      } else if (realValueThree! > realValueOne! &&
          realValueThree! > realValueTwo!) {
        if (realValueTwo! > realValueOne!) {
          return '$realValueThree, $realValueTwo, $realValueOne';
        } else {
          return '$realValueThree, $realValueOne, $realValueTwo';
        }
      } else {
        return "valores iguais";
      }
    } else {
      return "Valores Irregulares";
    }
  }
}

void main() {
  final sortedNumbers = NumberInOrder();

  sortedNumbers.realValueOne = 1;
  sortedNumbers.realValueTwo = 2;
  sortedNumbers.realValueThree = 3;

  print(sortedNumbers.sortedNumbers());
  
}
