mixin PersonName {
  String principalName(String? name) => (name != null) ? name.toUpperCase().substring(0, 3) : "BAD";
}

class Person with PersonName {
  String name;
  Person({required this.name});
  @override
  String toString() => "name: ${principalName(name)}";
}

void main() {
  final person = Person(name: "gustavo");
  print(person);
}
