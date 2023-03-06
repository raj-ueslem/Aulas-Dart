class Person {
  String name;
  Person({required this.name});
  bool validateName() => name.isNotEmpty;

  void showName() {
    if (validateName()) {
      for (var i = 0; i < 20; i++) {
        print(name);
      }
    } else {
      print("null");
    }
  }
}

void main() {
  final person = Person(name: "ForInfinite");

  // person.name = "ForInfinite";

  person.showName();
}
