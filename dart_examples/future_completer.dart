import 'dart:async';

Future<void> doSomeWork() async {
  await Future.delayed(Duration(seconds: 1));
  print('Work done!');
}

Future<void> longRunningOperation() async {
  await Future.delayed(Duration(seconds: 3));
}

void completerWork(Completer completer) async {
  await Future.delayed(const Duration(seconds: 1));
  completer.complete(0);
}

void main() async {
  await doSomeWork();
  doSomeWork().then((value) => print("Done"));
  doSomeWork().catchError((error) => print("Error: $error"));
  //--------------------------------------------------------------

  try {
    await longRunningOperation().timeout(Duration(seconds: 2));
  } catch (error) {
    print(error); // Output: TimeoutException
  }
  //--------------------------------------------------------------

  final futureWork = doSomeWork(); // type: Future<void>
  final futureWork2 = doSomeWork(); // type: Future<void>
  await Future.wait([futureWork, futureWork2]);
  //--------------------------------------------------------------

  final completer = Completer();
  completerWork(completer);
  final result = await completer.future;
  print(result);
}
