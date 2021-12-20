class Car {
  String? brand;
  int? buildYear;
  
  Car({this.brand, this.buildYear});
  /*
  Car({String? brand, int? buildYear}) { // constructor with body => Geringverdiener-Variante
    this.brand = brand;
    this.buildYear = buildYear; // this referrece to class level variable
  }
  */
}

/*
class Person {
  String name = 'Max';
  int age = 30; // varible inside a class -> property
}
*/

/*
double addNumber(double num1, double num2) {
  // print(num1 + num2);
  return num1 + num2;
}
*/

void main() {
  var car2 = Car(brand: 'Porsche');
  var car1 = Car(buildYear: 2001);
  print(car2.brand);
  print(car1.buildYear);
/*
  var p1 = Person(); // creates a new instance of class Person();
  var p2 = Person();
  print(p1);
  print(p1.age);
  p2.name = 'Karl';
  print(p2.name);

  var test; // varible inside a function -> just a variable

  var firstResult = addNumber(1.1,
      2.2); // here we use 'var' because dart knows that this always will be double value.
  double
      secondResult; // here dart doesn't knows what type it is. So if we want it to be a double value, we use type 'double'

  print(firstResult);
  print('Hello!');
*/
}
