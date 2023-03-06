mixin ConvertVariable {
  String convertGenderInString(int gender) {
    switch (gender) {
      case 1:
        return "Feminino";
      case 2:
        return "Masculino";
      case 3:
        return "Outro genêro";
      default:
        return "Opção invalida";
    }
  }
}

class Person with ConvertVariable {
  int id;
  String name;
  int gender;

  Person({required this.id, required this.name, required this.gender});

  factory Person.fromMap(Map<String, dynamic> map) => Person(id: map['id'], name: map['name'], gender: map['gender']);
  @override
  String toString() => "$id, $name, ${convertGenderInString(gender)}";
}

void main() {
  const mock = [
    {"id": 1, "name": "Welinton", "gender": 2},
    {"id": 2, "name": "julia", "gender": 1},
    {"id": 3, "name": "lais", "gender": 1},
    {"id": 4, "name": "Raj", "gender": 2},
    {"id": 5, "name": "Tammy", "gender": 3}
  ];

  final List<Person> people = mock.map((e) => Person.fromMap(e)).toList();

  print(people);
}
