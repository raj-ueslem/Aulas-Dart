mixin PersonName {
  String lowCaser(name) {
    if (name != null) {
      return name.toUpperCase().substring(0, 3);
    }
    return "BAD";
  }
}

class Person with PersonName {
  String? name;
  Person(this.name);
  @override
  String toString() => "name: ${lowCaser(name)}";
}

void main() {
  final person = Person("josh");

  print(person);
}
