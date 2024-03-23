//!https://codelabs.developers.google.com/codelabs/dart-patterns-records?hl=en#0

import 'dart:convert';

const documentJson = '''
{
  "metadata": {
    "title": "My Document",
    "modified": "2023-05-10"
  },
  "blocks": [
    {
      "type": "h1",
      "text": "Chapter 1"
    },
    {
      "type": "p",
      "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
    },
    {
      "type": "checkbox",
      "checked": false,
      "text": "Learn Dart 3"
    }
  ]
}
''';

void main() {
  final doc = Document();
  print(doc.metadata);
  final (title, modified: date) = doc.metadata;
  print("$title, $date");
  final (title2, :modified) = doc.metadata;
  print("$title2, $modified");
  final (title3, modified: date3) = doc.metadata2;
  print("$title3, $date3");
}

class Document {
  final Map<String, Object?> _json;
  Document() : _json = jsonDecode(documentJson);

  (String, {DateTime modified}) get metadata {
    // Add from here...
    const title = 'My Document Hard Coded';
    final now = DateTime.now();

    return (title, modified: now);
  }

  (String, {DateTime modified}) get metadata2 {
    if (_json
        case {
          'metadata': {
            'title': String title,
            'modified': String localModified,
          }
        }) {
      return (title, modified: DateTime.parse(localModified));
    } else {
      throw const FormatException('Unexpected JSON');
    } // to here.
  }

  List<Block> getBlocks() {
    // Add from here...
    if (_json case {'blocks': List blocksJson}) {
      return [for (final blockJson in blocksJson) Block.fromJson(blockJson)];
    } else {
      throw const FormatException('Unexpected JSON format');
    }
  }

  String getBlockType(String blockType) {
    if (blockType.isEmpty) {
      return switch (blockType) {
        "h1" => "Hading",
        "p" || "checkbox" => "P or Checkbox",
        _ => "Unknown",
      };
    } else {
      switch (blockType) {
        case 'h1':
          return "Heading";
        case 'p' || 'checkbox':
          return "P or Checkbox";
        case _:
          return "Unknown";
      }
    }
  }
}

class Block {
  final String type;
  final String text;
  Block(this.type, this.text);

  factory Block.fromJson(Map<String, dynamic> json) {
    if (json case {'type': final type, 'text': final text}) {
      return Block(type, text);
    } else {
      throw const FormatException('Unexpected JSON format');
    }
  }
}

String formatDate(DateTime dateTime) {
  final today = DateTime.now();
  final difference = dateTime.difference(today);

  return switch (difference) {
    Duration(inDays: 0) => 'today',
    Duration(inDays: 1) => 'tomorrow',
    Duration(inDays: -1) => 'yesterday',
    Duration(inDays: final days, isNegative: true) => '${days.abs()} days ago',
    Duration(inDays: final days) => '$days days from now',
  };
}
