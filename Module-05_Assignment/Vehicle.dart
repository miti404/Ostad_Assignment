abstract class Vehicle {
  int _speed = 10;

  void move();

  void setSpeed(int speed) {
    _speed = speed;
  }

  int get speed => _speed;
}

class Car extends Vehicle {
  void move() {
    print("The car is moving at $_speed km/h");
  }
}

void main() {
  Car car = Car();
  car.setSpeed(20);
  car.move();
}
