class Shop {
  double calculatecalculateValuePay(double valueProduct, {int productAmount = 1, int amountInstallments = 1, double? fees}) {
    if (fees != null) {
      return (valueProduct * productAmount + ((productAmount * valueProduct) * fees)) / amountInstallments;
    }
    return valueProduct * productAmount / amountInstallments;
  }

  String? checkInstallments(double? valueProduct, {int productAmount = 1, int amountInstallments = 1, double? fees}) {
    if (valueProduct != null && amountInstallments >= 1 && amountInstallments <= 12) {
      switch (amountInstallments) {
        case 5:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.01)}';
        case 6:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.02)}';
        case 7:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.03)}';
        case 8:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.05)}';
        case 9:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.08)}';
        case 10:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.13)}';
        case 11:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.14)}';
        case 12:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments, fees: 0.15)}';
        default:
          return '${calculatecalculateValuePay(valueProduct, productAmount: productAmount, amountInstallments: amountInstallments)}';
      }
    }
    return "Numero de parcelas ou valor de entrada invalidos";
  }
}

void main() {
  final shop = Shop();
  print(shop.checkInstallments(200, amountInstallments: 5, productAmount: 5));
}
