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

  double? calculateIncrease({required Employee employee, double? percentage}) {
    return employee.wage! * percentage! / 100;
  }

  double? calculateTotal({required Employee employee, double? percentage}) {
    return (employee.wage! * percentage! / 100) + employee.wage!;
  }

  String? calculateCurrentWage({required Employee employee, double? percentage, double? calculateWage, double? calculateUpWage}) {
    if (employee.wage != null) {
      if (employee.wage! <= 280) {
        percentage = 20;
        calculateWage = calculateTotal(percentage: percentage, employee: employee);
        calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
      } else if (employee.wage! >= 280.01 && employee.wage! <= 700) {
        percentage = 15;
        calculateWage = calculateTotal(percentage: percentage, employee: employee);
        calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
      } else if (employee.wage! >= 700.01 && employee.wage! <= 1500) {
        percentage = 10;
        calculateWage = calculateTotal(percentage: percentage, employee: employee);
        calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
      } else {
        percentage = 5;
        calculateWage = calculateTotal(percentage: percentage, employee: employee);
        calculateUpWage = calculateIncrease(percentage: percentage, employee: employee);
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

  employee.wage = 200;

  print(rh.calculateCurrentWage(employee: employee));
//   print(employee);
}
