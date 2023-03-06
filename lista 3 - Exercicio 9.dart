//classe nome ignorar!
class Person {
  String name;

  Person({required this.name});
  String convertNameFromLowerCaseToUppercase() {
    List<String> nameString = name.split('');
    String inputEmptyName = "";
    for (int i = 0; i < name.length; i++) {
      if (i % 2 == 0) {
        inputEmptyName += nameString[i].toUpperCase();
      } else {
        inputEmptyName += nameString[i].toLowerCase();
      }
    }
    return inputEmptyName;
  }

  @override
  String toString() => "Nome intercalado: ${convertNameFromLowerCaseToUppercase()}";
}

void main() {
  final person = Person(name: "Roger");

  print(person);
}
