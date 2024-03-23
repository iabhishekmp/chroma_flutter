//!https://github.com/dart-lang/language/blob/main/accepted/3.0/class-modifiers/feature-specification.md#syntax
import 'dart:math' as math;

// **abstract** (Abstract Blueprint)
abstract class Animal {
  void makeSound(); // Abstract method (no implementation)
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// **final** Class (No Subclassing)
final class Configuration {
  static const String appName = 'My App';
  static const int version = 1;
}

// **implements** for Contracts
abstract interface class ShapeInterface {
  double get area;
}

class MyCircle implements ShapeInterface {
  final double radius;

  MyCircle(this.radius);

  @override
  double get area => 3.14 * radius * radius;
}

// **mixin** for Shared Functionality (with `extends`)
mixin Logger {
  void log(String message) {
    print('Log: $message');
  }
}

class User with Logger {
  // Can mixin Logger

  String name;

  User(this.name);

  void greet() {
    log('User $name greeted!');
  }
}

sealed class Shape {}

class Square implements Shape {
  final double length;
  Square(this.length);
}

class Circle implements Shape {
  final double radius;
  Circle(this.radius);
}

double calculateArea(Shape shape) => switch (shape) {
      Square(length: var l) => l * l,
      Circle(radius: var r) => math.pi * r * r
    };

void main() {}
