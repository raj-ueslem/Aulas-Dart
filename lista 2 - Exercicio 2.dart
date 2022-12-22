class Person {
  String? name;

  Person(this.name);

  Person.fromMap(Map<String, String> map) {
    name = map['name'] ?? 'Valor nulo';
  }
  @override
  String toString() => 'nome: $name';
}

void main() {
  const mock = [
    {"name": "Eduarda"},
    {"name": "Gustavo"}
  ];

  final List<Person> people = mock.map((element) => Person.fromMap(element)).toList();

  for (var person in people) {
    print(person);
  }
}
