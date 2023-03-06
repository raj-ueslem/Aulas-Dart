class UnionString {
  String firstName;
  String lastName;
  UnionString({required this.firstName, required this.lastName});

  String showLettersAmmountAndUpperCase() => '${firstName.toUpperCase().substring(0, 2)}${lastName.toUpperCase().substring(0, 1)}';
}

void main() {
  final unionString = UnionString(firstName: "Sulista", lastName: "Full");

  print(unionString.showLettersAmmountAndUpperCase());
}
