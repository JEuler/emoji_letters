import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Please provide an argument containing the regular string');
    exit(1);
  } else if (arguments.length > 2) {
    print(
        'Please provide 2 arguments containing the regular string and true or false (White or Yellow letters)');
    exit(1);
  } else {
    var inputString = arguments[0];
    var isWhite =
        arguments.length > 1 ? arguments[1].toLowerCase() == 'true' : true;
    var output = convertToString(inputString, isWhite);
    print(output);
  }
}

String convertToString(String str, bool isWhite) {
  final result = [];
  for (var ch in str.split('')) {
    if (isWhite) {
      result.add(_alphabetWhiteEmojiConversion[ch]);
    } else {
      result.add(_alphabetYellowEmojiConversion[ch]);
    }
  }

  return result.join(' ').toString();
}

// abcdefghijklmnopqrstuvwxyz
final Map<String, String> _alphabetWhiteEmojiConversion = {
  'a': ':alphabet-white-a:',
  'b': ':alphabet-white-b:',
  'c': ':alphabet-white-c:',
  'd': ':alphabet-white-d:',
  'e': ':alphabet-white-e:',
  'f': ':alphabet-white-f:',
  'g': ':alphabet-white-g:',
  'h': ':alphabet-white-h:',
  'i': ':alphabet-white-i:',
  'j': ':alphabet-white-j:',
  'k': ':alphabet-white-k:',
  'l': ':alphabet-white-l:',
  'm': ':alphabet-white-m:',
  'n': ':alphabet-white-n:',
  'o': ':alphabet-white-o:',
  'p': ':alphabet-white-p:',
  'q': ':alphabet-white-q:',
  'r': ':alphabet-white-r:',
  's': ':alphabet-white-s:',
  't': ':alphabet-white-t:',
  'u': ':alphabet-white-u:',
  'v': ':alphabet-white-v:',
  'w': ':alphabet-white-w:',
  'x': ':alphabet-white-x:',
  'y': ':alphabet-white-y:',
  'z': ':alphabet-white-z:',
};

final Map<String, String> _alphabetYellowEmojiConversion = {
  'a': ':alphabet-yellow-a:',
  'b': ':alphabet-yellow-b:',
  'c': ':alphabet-yellow-c:',
  'd': ':alphabet-yellow-d:',
  'e': ':alphabet-yellow-e:',
  'f': ':alphabet-yellow-f:',
  'g': ':alphabet-yellow-g:',
  'h': ':alphabet-yellow-h:',
  'i': ':alphabet-yellow-i:',
  'j': ':alphabet-yellow-j:',
  'k': ':alphabet-yellow-k:',
  'l': ':alphabet-yellow-l:',
  'm': ':alphabet-yellow-m:',
  'n': ':alphabet-yellow-n:',
  'o': ':alphabet-yellow-o:',
  'p': ':alphabet-yellow-p:',
  'q': ':alphabet-yellow-q:',
  'r': ':alphabet-yellow-r:',
  's': ':alphabet-yellow-s:',
  't': ':alphabet-yellow-t:',
  'u': ':alphabet-yellow-u:',
  'v': ':alphabet-yellow-v:',
  'w': ':alphabet-yellow-w:',
  'x': ':alphabet-yellow-x:',
  'y': ':alphabet-yellow-y:',
  'z': ':alphabet-yellow-z:',
};
