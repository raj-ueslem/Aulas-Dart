class Person {
  String name;

  Person({required this.name});

  factory Person.fromMap(Map<String, dynamic> map) => Person(name: map['name']);
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
