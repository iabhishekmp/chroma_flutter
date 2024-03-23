List<int> sortNumbers(List<int> numbers, int compare(int a, int b)) {
  numbers.sort(compare); // Use provided compare function for sorting
  return numbers;
}

int ascendingCompare(int a, int b) => a - b; // Ascending order comparison
int descendingCompare(int a, int b) => b - a; // Descending order comparison

void main() {
  List<int> numbers = [5, 2, 8, 1, 3];
  List<int> sortedAscending = sortNumbers(
    numbers.toList(),
    ascendingCompare,
  ); // Sort in ascending order
  List<int> sortedDescending = sortNumbers(
    numbers.toList(),
    descendingCompare,
  ); // Sort in descending order
  print('Ascending: $sortedAscending');
  print('Descending: $sortedDescending');

  Function increment = incrementCounter();
  increment(); // Counter: 1
  increment(); // Counter: 2 (uses captured counter value)
}

int counter = 0; // Global variable

Function incrementCounter() {
  counter++; // Access and modify global counter
  return () =>
      print('Counter: $counter'); // Closure that captures counter value
}
