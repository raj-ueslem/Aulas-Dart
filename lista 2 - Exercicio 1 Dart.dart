class Pessoa {
  int? code;
  String? name;
  String? lastname;

  Pessoa(this.code, this.name, this.lastname);

  String? test() {
    return '${name!.toUpperCase()}, ${lastname!.toUpperCase()}';
  }
}

class Aluno {}

class Professor {}

void main() {}
