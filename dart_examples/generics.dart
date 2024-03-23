T plus<T extends num>(T x, T y) {
  return x + y as T;
}

class Box<T extends num> {
  T value;

  Box(this.value);
}

void main() {
  final addResult1 = plus(3, 5); // int
  final addResult2 = plus(3, 5.4); // num
  print("$addResult1, $addResult2");
  //-------------------------------------------------------

  final box = Box(34.3); // Allowed: double extends num
  print(box);
  // Box<String> stringBox = Box('hello'); // Compile-time error: String doesn't extend num
  //-------------------------------------------------------
}
