class Animal {
  String name;
  Animal({required this.name});
  factory Animal.fromMap(Map<String, dynamic> map) => Animal(name: map['animalName']);
  Map<String, String> toMap() => {'animalName': name};
  @override
  String toString() => 'toMap: ${toMap()}';
}

void main() {
//   final animalName = AnimalName(animalName: "lu");
  const mock = [
    {"animalName": "Rex"},
    {"animalName": "Pix"},
    {"animalName": "Lulu"},
    {"animalName": "MotoMoto"},
    {"animalName": "Amendoim"},
    {"animalName": "Biscoito"},
    {"animalName": "Pipoca"},
    {"animalName": "Paçoca"},
    {"animalName": "Pepino"}
  ];

  final List<Animal> animals = mock.map((element) => Animal.fromMap(element)).toList();

  for (var animal in animals) {
    print(animal);
  }
}
