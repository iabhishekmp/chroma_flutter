class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  Person.yo(String name, int age)
      : name = "Yo $name",
        age = 3;

  void greet() {
    print('Hello, my name is $name and I am $age years old.');
  }

  static String description() => "Person(String name, int age)";
}

void main() {
  Person alice = Person(
    name: 'Alice',
    age: 30,
  ); // Creating an object (instance) of Person
  alice.greet(); // Calling a method on the object

  final abhi = Person.yo("abhi", 24);
  abhi.greet();

  print(Person.description());

  Student bob = Student('Bob', 25, 'Tech University');
  bob.greet();
}

class Student extends Person {
  String school;

  Student(String name, int age, this.school)
      : super(name: name, age: age); // Super constructor call

  @override // Marks method as overriding the superclass method
  void greet() {
    super.greet(); // Call the superclass greet method
    print('I am a student at $school.');
  }
}
