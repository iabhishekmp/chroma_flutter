void main() {
  try {
    final result = 10 ~/ 0; // Division by zero (throws an exception)
  } catch (error) {
    print('Error: $error'); // Handle the exception
  } finally {
    print('This will always execute.');
  }

  try {
    validateAge(-5);
  } catch (error) {
    print(error); // Output: Exception: Age cannot be negative.
  }

  greet(null);
}

int validateAge(int age) {
  if (age < 0) {
    throw Exception('Age cannot be negative.');
  }
  return age;
}

void greet(String? name) {
  assert(name != null, 'Name cannot be null'); // Check for null name
  print('Hello, $name!');
}
