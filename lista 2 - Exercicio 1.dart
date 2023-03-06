abstract class Person {
  int code;
  String name;
  String lastName;

  Person({required this.code, required this.name, required this.lastName});

  bool validateCode() => !code.isNaN;

  String capitalizedName() => '${name.toUpperCase()} ${lastName.toUpperCase()}';

  String tinyName() => '${name.toLowerCase()} ${lastName.toLowerCase()}';

  @override
  String toString() => "\nNome completo Maiúsculo: ${capitalizedName()}\nNome completo Minusculo: ${tinyName()}";
}

class Student extends Person {
  double firstGrade;
  double secondGrade;

  Student({required String name, required String lastName, required int code, required this.firstGrade, required this.secondGrade})
      : super(name: name, lastName: lastName, code: code);

  bool validateGrade() => !firstGrade.isNegative && !secondGrade.isNegative;

  double? calculateStudentGrade() => (validateGrade()) ? (firstGrade + secondGrade) / 2 : null;

  @override
  String toString() => 'Calculo de nota: ${calculateStudentGrade()} \nCódigo: $code ${super.toString()}';
}

class Teacher extends Person {
  double hourValue;
  double workedHours;

  Teacher({required String lastName, required String name, required int code, required this.hourValue, required this.workedHours})
      : super(name: name, lastName: lastName, code: code);

  bool validateTeacher() => !hourValue.isNegative && !workedHours.isNegative;

  double? calculateWages() => (validateTeacher()) ? hourValue * workedHours : null;

  @override
  String toString() => "\nSalario a receber: ${calculateWages()}\nCódigo: $code ${super.toString()}";
}

void main() {
  final student = Student(name: 'Ana', lastName: 'Piltover', code: 28, firstGrade: 10, secondGrade: 5);
  final teacher = Teacher(name: 'Gustavo', lastName: 'Junior', code: 500, hourValue: 30, workedHours: 8);

  print(student.toString());
  print(teacher.toString());
}
