//!https://dart.dev/language/isolates

import 'dart:isolate';

Future<void> greetInIsolate(String name) async {
  print("Hello $name, from Isolate");
}

Future<DateTime> parseMyDate(String date) async {
  await Future.delayed(const Duration(seconds: 2));
  return DateTime.parse(date);
}

Future<void> longTaskWithMultipleResult() async {
  final port = ReceivePort();
  await Isolate.spawn(_startRemoteIsolate, port.sendPort);
  port.listen((message) {
    print(message);
    if (message == "hehe boii3") {
      port.close();
    }
  });
}

void _startRemoteIsolate(SendPort port) {
  port.send("hehe boii1");
  port.send("hehe boii2");
  port.send("hehe boii3");
}

void main() async {
  Isolate.run(() => greetInIsolate("ABhi"));
  print('Main isolate continues execution.');
  await Future.delayed(Duration(seconds: 1));

  final date1 =
      await Isolate.run(() => parseMyDate("2024-03-21 12:50:20.301244"));

  longTaskWithMultipleResult();
}
