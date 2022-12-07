//import 'dart:math' as math;

class ActiviteFive {
  
  double? realValueOne;
  double? realValueTwo;
  double? realValueThree;
  
  dynamic verify() {
    
    if(realValueOne != null && realValueTwo != null && realValueThree != null){
        if(realValueOne! >= realValueTwo! && realValueOne! >= realValueThree!) {
      
        if(realValueTwo! > realValueThree!) {
            return '$realValueOne, $realValueTwo, $realValueThree';
          } else {
            return '$realValueOne, $realValueThree, $realValueTwo';
          }
        } 
        else if(realValueTwo! >= realValueOne! && realValueTwo! >= realValueThree!) {
      
          if(realValueThree! > realValueOne!) {
            return '$realValueTwo, $realValueThree, $realValueOne';
          } else {
            return '$realValueTwo, $realValueOne, $realValueThree';
          }  
        } 
        else if(realValueThree! > realValueOne! && realValueThree! > realValueTwo!) {
          if(realValueTwo! > realValueOne!) {
            return '$realValueThree, $realValueTwo, $realValueOne';
          } else {
            return '$realValueThree, $realValueOne, $realValueTwo';  
          }  
        } else {
          return "valores iguais";
        }   
    } else {
      return "Valores Irregulares";
    }      
  }
}
void main() {
  final five = ActiviteFive();
  
  five.realValueOne = 2;
  five.realValueTwo = 1;
  five.realValueThree = 2;
  
  print(five.verify());
  
  
  
//   print();
}