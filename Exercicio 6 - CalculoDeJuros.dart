//import 'dart:math' as math;

class Shop {
  //double? valueOfPay;
  //int? productAmount;
  //int? amountOfInstallments;
  //
  //double totalValuePay = totalValue * 0.15 * 12;
  //
  double valuePay(double valueProduct,
      {int productAmount = 1, int amountInstallments = 1, double? fees}) {
    if (fees != null) {
      return valueProduct * productAmount +
          (productAmount * valueProduct * fees) * amountInstallments;
    }
    return valueProduct * productAmount * amountInstallments;
  }

  String? installments(double? valueProduct,
      {int productAmount = 1, int amountInstallments = 1, double? fees}) {
    if (valueProduct != null) {
      if (amountInstallments > 0 && amountInstallments <= 4) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments)}';
      } else if (amountInstallments == 5) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.01)}';
      } else if (amountInstallments == 6) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.02)}';
      } else if (amountInstallments == 7) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.03)}';
      } else if (amountInstallments == 8) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.05)}';
      } else if (amountInstallments == 9) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.08)}';
      } else if (amountInstallments == 10) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.13)}';
      } else if (amountInstallments == 11) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.14)}';
      } else if (amountInstallments == 12) {
        return '${valuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.15)}';
      }
    } else {
      return "Nenhum valor de produto adicionado";
    }

    return "Apenas Parcelas 1 a 12!";
  }
}

void main() {
  final shop = Shop();
  print(shop.installments(5000, productAmount: 1, amountInstallments: 5));
}
