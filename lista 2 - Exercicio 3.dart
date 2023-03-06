class Person {
  String name;
  double weight;
  int age;
  double height;

  Person({required this.name, required this.height, required this.weight, required this.age});

  factory Person.fromMap(Map<String, dynamic> map) => Person(name: map['name'], weight: map['weight'], height: map['height'], age: map['age']);

  bool validateAge() => age > 17;

  @override
  String toString() => (validateAge())
      ? 'nome: $name \npeso: ${weight}Kg \nidade: $age anos \naltura: ${height}cm'
      : 'Nome: $name \nPeso: ${weight}Kg \nMenor de idade \nAltura: ${height}cm';
}

void main() {
  const mock = [
    {"weight": 121, "height": 2, "age": 9}
  ];

  final List<Person> people = mock.map((element) => Person.fromMap(element)).toList();

  for (var person in people) {
    print(person);
  }
}
