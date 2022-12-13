import 'dart:math' as math;
class Circle {
//  double? radius;
//  double? pi;
 
 double? calculatePerimeter({double? radius , double pi = 3.14}) {
   if(radius != null && radius >= 0) {
     return 2 * (pi * radius);
   }
   return null;
 }
 
 double? calculateArea([double? radius,double pi = 3.14]) {
   if(radius != null && radius >= 0) {
     return pi * math.pow(radius, 2);
   }
   return null;
 }
 
}

void main() {
 final calculateCircle = Circle();
 
  
 print(calculateCircle.calculatePerimeter(radius: 12 ));
 print(calculateCircle.calculateArea(10));
//  calculateCircle.radius = 12;
//  calculateCircle.pi = 3.14;
  
//  print(calculateCircle.perimetercalculate());
}
