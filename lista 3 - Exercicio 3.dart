class Person {
  List<String> showListPersonName() {
    List<String> listName = ["Jose", "Gustavo", "melim", "Mirella", "Isabel", "Maria", "Pedro", "Luiza", "Matheus", "Eduarda"];
    return listName;
  }
}

void main() {
  final personName = Person();

  print(personName.showListPersonName());

  for (var personName in personName.showListPersonName()) {
    print(personName);
  }
}
