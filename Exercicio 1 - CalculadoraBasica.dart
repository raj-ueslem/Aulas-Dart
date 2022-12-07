class NumericCount {
  double? valueOne;
  double? valueTwo;
  
//   NumericCount(this.valueOne, this.valueTwo); 
  
  bool verify() {
    return valueOne != null && valueTwo != null;
  }
  
  double? sum() {
    if(verify()) {
      return valueOne! + valueTwo!;
    }
    return null;
  }
  double? subtract() {
    if(verify()) {
      return valueOne! - valueTwo!;
    }
    return null;
  }
  double? divide() {
    if(verify()) {
      if(valueOne! > 0 && valueTwo! > 0) {
        return valueOne! / valueTwo!;
      }
    }
    return null;
  }
  double? multiply() {
    if(verify()) {
      if(valueOne! > 0 && valueTwo! > 0) {
        return valueOne! * valueTwo!;
      }
    }
    return null;
  }
}

void main() {
  final numericCount = NumericCount();
  numericCount.valueOne = 2;
  numericCount.valueTwo = 2;
  print('Soma: ${numericCount.sum()}');
  print('Subtração: ${numericCount.subtract()}');
  print('Divisão: ${numericCount.divide()}');
  print('Multiplicação: ${numericCount.multiply()}');
  
}
