abstract class People {
  String? name;
  String? bornDate;
  String? genre;

  People(this.name, this.bornDate, this.genre);
}

class Employee extends People {
  int? idEmployee;
  double? wage;
  String? office;

  Employee({this.idEmployee, this.office, this.wage, String? name, String? bornDate, String? genre}) : super(name, bornDate, genre);
  @override
  String toString() {
    return 'Salario: $wage';
  }
}

class Rh {
  int? cnpj;
  String? companyName;

  Rh({this.cnpj, this.companyName});

  String? calculateCurrentWage({required Employee employee}) {
    double? percentage;

    if (employee.wage! <= 280) {
      percentage = 20;

      return 'Novo Salario: ${(employee.wage! * percentage / 100) + employee.wage!}'
          '\nSalario Antes: ${employee.wage}\nValor de aumento: ${employee.wage! * percentage / 100} \nPorcentagem: $percentage%';
    } else if (employee.wage! >= 280.01 && employee.wage! <= 700) {
      percentage = 0.15;
      return 'Novo Salario: ${(employee.wage! * percentage / 100) + employee.wage!}'
          '\nSalario Antes: ${employee.wage}\nValor de aumento: ${employee.wage! * percentage / 100} \nPorcentagem: $percentage%';
    } else if (employee.wage! >= 700.01 && employee.wage! <= 1500) {
      percentage = 0.10;
      return 'Novo Salario: ${(employee.wage! * percentage / 100) + employee.wage!}'
          '\nSalario Antes: ${employee.wage}\nValor de aumento: ${employee.wage! * percentage / 100} \nPorcentagem: $percentage%';
    } else {
      percentage = 0.05;
      return 'Novo Salario: ${(employee.wage! * percentage / 100) + employee.wage!}'
          '\nSalario Antes: ${employee.wage}\nValor de aumento: ${employee.wage! * percentage / 100} \nPorcentagem: $percentage%';
    }
  }
//   @override
//   String toString(){
//     return 'Salario com Reajuste: ${calculateCurrentWage(employee: employee)} ';
//   }
}

void main() {
  final employee = Employee();
  final rh = Rh();

  employee.wage = 280;

  print(rh.calculateCurrentWage(employee: employee));
//   print(employee);
}
