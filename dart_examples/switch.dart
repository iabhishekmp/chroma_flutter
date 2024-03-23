void main() {
  String day = 'Wednesday';
  switch (day) {
    case 'Monday':
      print('Start of the week');
      break;
    case 'Wednesday':
      print('Midweek hump day');
      break;
    case 'Friday':
      print('TGIF!');
      break;
    default:
      print('Weekend!');
  }

  String greeting = 'Hello, world!';
  switch (greeting) {
    case 'Hello, world!': // Matches the exact string
      print('The most common greeting!');
      break;
    case String message: // Matches any String value
      print('A generic greeting: $message');
      break;
    default:
      print('An unexpected greeting!');
  }

  int number = 42;
  switch (number) {
    case num value when value % 2 == 0:
      print('Even');
    case num value when value % 2 != 0:
      print('Odd');
  }

  List randomData = [1, "abhi", true];
  switch (randomData) {
    case [int id, String name, bool status]:
      print("found with: $id, $name, $status");
    default:
      print('Unexpected data!');
  }
}
