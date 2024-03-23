import 'dart:developer' as devtools;

extension StringExtensions on String {
  bool isLong() => this.length > 10;
}

extension Vector2 on List<double> {
  List<double> operator +(List<double> other) {
    return [this[0] + other[0], this[1] + other[1]];
  }
}

extension Log on Object {
  void log() => devtools.log(toString());
}

extension AlmostEqual on double {
  static const diff = 0.00001;
  bool isAlmostEqual(double other) {
    return (this - other).abs() < diff;
  }
}

void main() {
  String message = 'This is a short message.';
  if (message.isLong()) {
    print('The message is long.');
  } else {
    // Output: The message is short.
    print('The message is short.');
  }
  //-------------------------------------------------------

  List<double> vector1 = [1.0, 2.0];
  List<double> vector2 = [3.0, 4.0];
  List<double> sumVector = vector1 + vector2;
  print(sumVector); // Output: [4.0, 6.0]
  //-------------------------------------------------------

  sumVector.log();
  //-------------------------------------------------------

  final lat1 = 59.332790;
  final lat2 = 59.332791;
  print(lat1.isAlmostEqual(lat2));
}
