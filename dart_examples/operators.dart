void main() {
  //? Bitwise Operators
  int bit1 = 1; // Binary representation: 0001
  int bit2 = 2; // Binary representation: 0010
  int andResult = bit1 & bit2; // Bitwise AND: 0000 (only 1 if both bits are 1)
  int orResult = bit1 | bit2; // Bitwise OR: 0011 (1 if either bit is 1)
  int xorResult = bit1 ^ bit2; // Bitwise XOR: 0011 (1 if only one bit is 1)
  int notResult = ~bit1; // Bitwise NOT: 1110 (flips all bits)
  int leftShift =
      bit1 << 2; // Left shift: 0100 (shifts bits left by 2 positions)
  int rightShift =
      bit2 >> 1; // Right shift: 0001 (shifts bits right by 1 position)

  //? Cascade Notation
  Person person = Person(name: 'Alice', age: 30);
  person
    ..name = 'Bob'
    ..age = 35; // Equivalent to:
  // person.name = 'Bob';
  // person.age = 35;

  final yo = <int>[]
    ..add(10)
    ..add(2)
    ..sort();
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});
}
