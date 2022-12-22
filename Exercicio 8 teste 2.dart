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
    if (employee.wage != null) {
      double? percentage;
      double? calculateWage;
      double? calculateUpWage;

      if (employee.wage! <= 280) {
        percentage = 20;
        calculateWage = (employee.wage! * percentage / 100) + employee.wage!;
        calculateUpWage = employee.wage! * percentage / 100;
      } else if (employee.wage! >= 280.01 && employee.wage! <= 700) {
        percentage = 15;
        calculateWage = (employee.wage! * percentage / 100) + employee.wage!;
        calculateUpWage = employee.wage! * percentage / 100;
      } else if (employee.wage! >= 700.01 && employee.wage! <= 1500) {
        percentage = 10;
        calculateWage = (employee.wage! * percentage / 100) + employee.wage!;
        calculateUpWage = employee.wage! * percentage / 100;
      } else {
        percentage = 5;
        calculateWage = (employee.wage! * percentage / 100) + employee.wage!;
        calculateUpWage = employee.wage! * percentage / 100;
      }
      return 'Aumento Salario: $calculateWage \nValor de Aumento: $calculateUpWage \nSalario Atual: ${employee.wage} \nPorcentagem: $percentage%';
    }
    return 'Valor de Salario entrou nulo';
  }
//   @override
//   String toString(){
//     return 'Salario com Reajuste: ${calculateCurrentWage(employee: employee)} ';
//   }
}

void main() {
  final employee = Employee();
  final rh = Rh();

  employee.wage = 2000;

  print(rh.calculateCurrentWage(employee: employee));
//   print(employee);
}
