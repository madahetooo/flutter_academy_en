import 'package:flutter_academy_en/reverse_string_app/reverse_string_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Strings shoul be reversed', () {
    String initialWord = "Hello";
    String reversedWord = reverseString(initialWord); // "olleH"
    expect(reversedWord, 'olleH');
  });
}
