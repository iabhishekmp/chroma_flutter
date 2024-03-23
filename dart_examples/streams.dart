import 'dart:async';

Stream<int> countNumbers(int start, int end) async* {
  for (int i = start; i <= end; i++) {
    yield i; // Emit each number
    await Future.delayed(Duration(milliseconds: 500)); // Simulate delay
  }
}

// Using StreamController
StreamController<String> dataController = StreamController<String>();

void addDataToStream(String data) {
  dataController.add(data);
}

// Stream Transformers
Stream<int> evenNumbers = Stream.fromIterable([1, 2, 3, 4, 5])
    .where((number) => number % 2 == 0)
    .map((number) => number * 2);

Stream<String> messages =
    Stream.periodic(Duration(seconds: 1), (sec) => 'New message! $sec');

void main() async {
  StreamSubscription subscription = countNumbers(1, 5).listen(
    (number) => print(number),
  );
  await subscription.cancel(); // Stop listening after some time

  dataController.stream.listen((data) => print(data));
  addDataToStream('Message 1');
  await Future.delayed(Duration(seconds: 1));
  addDataToStream('Message 2');

  evenNumbers.listen(print);

  StreamSubscription msgSub = messages.listen(print);
  await Future.delayed(Duration(seconds: 3));
  msgSub.cancel(); // Stop listening after 3 seconds
}
