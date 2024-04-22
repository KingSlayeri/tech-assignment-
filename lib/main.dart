import 'dart:async';
import 'dart:io';

class Car {
  // Properties
  String? name;
  int? year;

  // Method
  void display() {
    print("Name: $name");
    print("Year made: $year");
  }
}
// Here In student class, we are extending the
// properties and methods of the Person class
class carBrand extends Car {
  // Properties
  String? brand;
  String? model;

  // Method
  void displayCarInfo() {
    print("Car: $brand");
    print("Model: $model");
  }
}





class CarEngine {

  void turnOn(){

    print("The ENgine has been turned ON!");
  }


  void turnOff(){
        print("The ENgine has been turned OFF!");

  }
  
}

class EngineStatus implements CarEngine {
  @override
  void turnOff() {
        print("The Engine is turned OFF!");

  }

  @override
  void turnOn() {
        print("The Engine is turned ON!");
  }
  
}

Future<void> carStart() async {
  var carstart = EngineStatus();

  print("Please Proceed to start the car");




  int revCount = 0;
  do {
    print("The car is OFF!!");
    revCount++;
    if (revCount==10) {
      await Future.delayed(const Duration(seconds: 10));
      carstart.turnOn();
      
    }

    
  } while (revCount<10);

}
void informatio(){

  // creating file object
  File info = File('info.txt');
  // read file
  String contents = info.readAsStringSync();
  // print file
  print(contents);


}


void main() {
  // Creating an object of the Student class
  var car = carBrand();
  car.name = "John";
  car.year = 2022;
  car.brand = "AUDI";
  car.model = "S4 quatro";
  car.display();
  car.displayCarInfo();

  carStart();
  informatio();

   


}