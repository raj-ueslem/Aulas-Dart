import "dart:math";

mixin CpfValidator {
  List<String> blackList = [
    "12345678910",
    "11111111111",
    "22222222222",
    "33333333333",
    "44444444444",
    "55555555555",
    "66666666666",
    "77777777777",
    "88888888888",
    "99999999999"
  ];
  String stripRegex = r'[^\d]';

  int calculateCheckerCpfDigit({required String document}) {
    List<int> cpfNumbers = document.split('').map((document) => int.parse(document, radix: 10)).toList();
    int modulos = cpfNumbers.length + 1;
    List<int> multiplied = [];

    for (var i = 0; i < cpfNumbers.length; i++) {
      multiplied.add(cpfNumbers[i] * (modulos - i));
    }
    int mod = multiplied.reduce((buffer, cpfNumbers) => (buffer + cpfNumbers) % 11);
    return (mod < 2 ? 0 : 11 - mod);
  }

  String format(String document) {
    RegExp regExp = RegExp(r'^(\d{3})(\d{3})(\d{3})(\d{2})$');
    return checkForEmptyCharacters(document).replaceAllMapped(regExp, (Match m) => "${m[1]}.${m[2]}.${m[3]}-${m[4]}");
  }

  String checkForEmptyCharacters(String? document) {
    RegExp regExp = RegExp(stripRegex);
    document = document ?? "";
    return document.replaceAll(regExp, "");
  }

  bool isValidateCpf({String? document, bool stripBeforeValidation = true}) {
    if (stripBeforeValidation) {
      document = checkForEmptyCharacters(document);
    }
    if (document == null || document.isEmpty) {
      return false;
    }
    if (document.length != 11) {
      return false;
    }
    if (blackList.contains(document)) {
      return false;
    }
    String cpfNumbers = document.substring(0, document.length - 2);
    cpfNumbers += calculateCheckerCpfDigit(document: cpfNumbers).toString();
    cpfNumbers += calculateCheckerCpfDigit(document: cpfNumbers).toString();

    return cpfNumbers.substring(cpfNumbers.length - 2) == document.substring(document.length - 2);
  }
}

mixin CnpjValidator {
  String regExpTest = r'[^\d]';
  int calculateCheckerCnpjDigit({required String document}) {
    int i = 2;
    List<int> reversedListItem = document.split("").map((reversedListItem) => int.parse(reversedListItem)).toList().reversed.toList();
    int sum = 0;
    for (var number in reversedListItem) {
      sum += number * i;
      i = (i == 9 ? 2 : i + 1);
    }
    int mob = sum % 11;
    return (mob < 2 ? 0 : 11 - mob);
  }

  String checkForEmptyCharacters(String? document) {
    RegExp regExp = RegExp(regExpTest);

    document = document ?? "";

    return document.replaceAll(regExp, "");
  }

  String format(String document) {
    RegExp regExp = RegExp(r'^(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})');

    return checkForEmptyCharacters(document).replaceAllMapped(regExp, (Match m) => "${[1]}.${[2]}.${[3]}/${[4]}-${[5]}");
  }

  bool isValidateCnpj({String? document, bool stripBeforeValidation = true}) {
    if (stripBeforeValidation) {
      document = checkForEmptyCharacters(document);
    }
    if (document == null || document.isEmpty) {
      return false;
    }
    if (document.length != 14) {
      return false;
    }
    String cnpjNumbers = document.substring(0, document.length - 2);
    cnpjNumbers += calculateCheckerCnpjDigit(document: cnpjNumbers).toString();
    cnpjNumbers += calculateCheckerCnpjDigit(document: cnpjNumbers).toString();

    return cnpjNumbers.substring(cnpjNumbers.length - 2) == document.substring(document.length - 2);
  }
}

class Client with CpfValidator, CnpjValidator {
  String name;
  int type;
  String document;

  Client({required this.name, required this.type, required this.document});

  factory Client.fromMap(Map<String, dynamic> map) => Client(
    name: map['name'], type: map['type'], document: map['document']);
  
  String checkDocumentOptionSelected({required String document, required int type}) {
    switch (type) {
      case 1:
        return isValidateCpf(document: document) != false? "CPF Válido":"CPF Inválido";
      case 2:
        return isValidateCnpj(document: document) != false? "CNPJ Válido":"CNPJ Inválido";
      default:
        return "Opção inválida";
    }
  }

  @override
  String toString() => "\nNome: $name, Tipo de documento: $type,"
  "\nDocumento: $document, ${checkDocumentOptionSelected(document: document, type: type)}";
}

void main() {
  const mock = [
    {"name": "Sabrina", "type": 2, "document": "18.781.203/0001-28"},
    {"name": "Gustavo", "type": 2, "document": "187812030001"},
    {"name": "Wilsom", "type": 1, "document": "28001238938"},
    {"name": "Junior", "type": 1, "document": "280.012.389-38"},
    {"name": "Seraphine", "type": 1, "document": "280.012.389-38"}
  ];

  final List<Client> clients = mock.map((element) => Client.fromMap(element)).toList();
  for (var client in clients) {
    print(client);
  }
}
