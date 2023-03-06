abstract class People {
  String name;
  String bornDate;
  String gender;

  People({required this.name, required this.bornDate, required this.gender});
}

class Employee extends People {
  int idEmployee;
  double wage;
  String office;

  Employee(
      {required this.idEmployee, required this.office, required this.wage, required String name, required String bornDate, required String gender})
      : super(name: name, bornDate: bornDate, gender: gender);

  @override
  String toString() {
    return 'Salario: $wage';
  }
}

class Rh {
  String cnpj;
  String companyName;

  Rh({required this.cnpj, required this.companyName});

  double calculateIncrease({required Employee employee, required double percentage}) => employee.wage * percentage / 100;

  //não entra nulo.
  double calculateTotal({required Employee employee, required double percentage}) => (employee.wage * percentage / 100) + employee.wage;

  String? calculateCurrentWage({required Employee employee}) {
    double percentage;
    //calculate é verbo alterar.
    double calculateWage;
    double calculateUpWage;
    if (employee.wage <= 280) {
      percentage = 20;
      calculateWage = calculateTotal(percentage: percentage, employee: employee);
      calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
    } else if (employee.wage >= 280.01 && employee.wage <= 700) {
      percentage = 15;
      calculateWage = calculateTotal(percentage: percentage, employee: employee);
      calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
    } else if (employee.wage >= 700.01 && employee.wage <= 1500) {
      percentage = 10;
      calculateWage = calculateTotal(percentage: percentage, employee: employee);
      calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
    } else {
      percentage = 5;
      calculateWage = calculateTotal(percentage: percentage, employee: employee);
      calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
    }
    return 'Aumento Salario: $calculateWage \nValor de Aumento: $calculateUpWage'
        '\nSalario Atual: ${employee.wage} \nPorcentagem: $percentage%';
  }
}

void main() {
  final employee = Employee(name: "Raj", gender: "masculino", wage: 200, bornDate: "10/10/2023", idEmployee: 100, office: "Jornalista");
  final rh = Rh(cnpj: "12039019203", companyName: "Charnesta");

//   employee.wage = 200;

  print(rh.calculateCurrentWage(employee: employee));
//   print(employee);
}
