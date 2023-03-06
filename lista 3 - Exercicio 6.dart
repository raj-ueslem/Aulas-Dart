class Enumerator {
  bool validateValue(int? value) => value != null && !value.isNegative;

  dynamic showGrowingNumbers({required int? value}) {
    if (validateValue(value)) {
      List<int> storingNumber = [];
      for (int i = 0; i <= value!; i++) {
        storingNumber += [i];
      }
      return storingNumber;
    } else {
      return "Sem valor ou valor negativo";
    }
  }

  dynamic showDecreasingNumbers({required int? value}) {
    if (validateValue(value)) {
      List<int> storingNumber = [];
      for (int i = value!; 0 <= i; i--) {
        storingNumber += [i];
      }
      return storingNumber;
    } else {
      return "Sem valor ou valor negativo";
    }
  }
}

void main() {
  final enumerator = Enumerator();
  int value = 20;
  print(enumerator.showGrowingNumbers(value: value));
  print(enumerator.showDecreasingNumbers(value: value));
}
