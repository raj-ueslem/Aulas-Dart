import 'dart:math';

mixin RandomNumber {
  var randomValue = Random();
  List<int> generatorListNumbers({required int value}) => List.generate(value, (index) => randomValue.nextInt(1000));
}

class Number with RandomNumber {
  int value;
  List<int> listNumbers = [];

  Number({required this.value});
  bool validateListNotEmpty() => listNumbers.isNotEmpty;

  void inflateListRandomNumbers() => listNumbers = generatorListNumbers(value: value);

  List<int> generateOddNumbersList({required List<int> listNumbers}) => listNumbers.where((value) => value % 2 == 0).toList();

  List<int> generateEvenNumbersList({required List<int> listNumbers}) => listNumbers.where((value) => value % 2 != 0).toList();

  void showEvenAndOddNumbersReturn() {
    if (validateListNotEmpty()) {
      print('Lista de numeros pares: ${generateEvenNumbersList(listNumbers: listNumbers)}');
      print('Lista de numeros impares: ${generateOddNumbersList(listNumbers: listNumbers)}');
    } else {
      print('Lista não é válida');
    }
  }

  @override
  String toString() => "Value: $value";
}

void main() {
  final number = Number(value: 10);
  number.inflateListRandomNumbers();
  number.showEvenAndOddNumbersReturn();
}
