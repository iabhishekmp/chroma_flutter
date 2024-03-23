void main() {
  String text = 'Parse my string';
  RegExp expression = RegExp(r'\w+'); // Matches one or more word characters
  Iterable<RegExpMatch> matches = expression.allMatches(text);

  for (RegExpMatch match in matches) {
    print(match.group(0)); // Output: Parse, my, string
  }
}
