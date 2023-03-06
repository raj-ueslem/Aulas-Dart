class ImcCalculator {
  late double _weight;
  late double _height;

  ImcCalculator._() {
    this._height = 0.0;
    this._weight = 0.0;
  }

  static final instance = ImcCalculator._();

  double get calculateImc => _weight / (_height * _height);

  set height(double height) => _height = height;
  set weight(double weight) => _weight = weight;
  double get height => _height;
  double get weight => _weight;
}

void main() {
  ImcCalculator.instance.height = 1.75;
  ImcCalculator.instance.weight = 75;

  print(ImcCalculator.instance.calculateImc);
}
