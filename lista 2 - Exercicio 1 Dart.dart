abstract class People {
  int? code;
  String? name;
  String? lastname;

  People({this.code, this.name, this.lastname});

  bool verify() => name != null && lastname != null;
  bool codeVerify() => !code!.isNaN && code != null;

  String? nameInUpperCase() {
    if (verify()) {
      return '${name!.toUpperCase()} ${lastname!.toUpperCase()}';
    }
    return "Valores nulos";
  }

  String? nameInLowerCase() {
    if (verify()) {
      return '${name!.toLowerCase()} ${lastname!.toLowerCase()}';
    }
    return "Valores nulos";
  }

  @override
  String toString() {
    return "\nNome completo Maiúsculo: ${nameInUpperCase()}\nNome completo Minusculo: ${nameInLowerCase()}";
  }
}

class Student extends People {
  double? firstNote;
  double? secondNote;

  bool verifyNote() {
    return !firstNote!.isNaN && firstNote != null && !secondNote!.isNaN && secondNote != null;
  }

  Student(String name, String lastname, int code, {this.firstNote, this.secondNote}) : super(name: name, lastname: lastname, code: code);

  double? calculateStudantNote() {
    if (verifyNote()) {
      return (firstNote! + secondNote!) / 2;
    }
    return null;
  }

  @override
  String toString() {
    return 'Calculo de nota: ${calculateStudantNote()} \nCódigo: $code ${super.toString()}';
  }
}

class Teacher extends People {
  double? hourValue;
  double? workedHours;

  bool verifyTeacher() => hourValue != null && !hourValue!.isNaN && workedHours != null && !workedHours!.isNaN;

  Teacher({String? lastname, String? name, int? code, this.hourValue, this.workedHours}) : super(name: name, lastname: lastname, code: code);

  double? calculateWages() {
    if (verifyTeacher()) {
      return hourValue! * workedHours!;
    }
    return null;
  }

  @override
  String toString() {
    return "\nSalario a receber: ${calculateWages()}\nCódigo: $code ${super.toString()}";
  }
}

void main() {
  final student = Student('Ana', 'Piltover', 28, firstNote: 10, secondNote: 5);
  final teacher = Teacher(name: 'Gustavo', lastname: 'Junior', code: 500, hourValue: 30, workedHours: 8);

  print(student.toString());
  print(teacher.toString());
}
