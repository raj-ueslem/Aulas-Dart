class Person {
  String? name;
  double? weight;
  int? age;
  double? height;

  bool verify() => age! > 17;

  Person(this.name, this.height, this.weight, this.age);

  Person.fromMap(Map<String, dynamic> map) {
    name = map['name'] ?? 'Preencha o nome';
    weight = map['weight'] ?? 0;
    height = map['height'] ?? 0;
    age = map['age'] ?? 0;
  }

  @override
  String toString() {
    if (verify()) {
      return 'nome: $name \npeso: ${weight}Kg \nidade: $age anos \naltura: ${height}cm';
    }
    return 'Nome: $name \nPeso: ${weight}Kg \nMenor de idade \nAltura: ${height}cm';
  }
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
