import 'package:test/test.dart';
import 'package:password_generator/password_generator.dart'
    as password_generator;

void main() {
  test('Generate password with default length', () {
    List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    List<String> capitalLetters = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    List<String> smallLetters = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    List<String> specialCharacters = [
      '!',
      '@',
      '#',
      '%',
      '^',
      '&',
      '*',
      '(',
      ')',
      '_',
      '-',
      '+',
      '=',
      '}',
      '{',
      '£',
      ']',
      '['
    ];

    String password = password_generator.generatePassword(
        0, numbers, capitalLetters, smallLetters, specialCharacters);
    expect(password.length, 4);
  });

  test('Generate password with specified length', () {
    List<String> numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    List<String> capitalLetters = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    List<String> smallLetters = [
      'a',
      'b',
      'c',
      'd',
      'e',
      'f',
      'g',
      'h',
      'i',
      'j',
      'k',
      'l',
      'm',
      'n',
      'o',
      'p',
      'q',
      'r',
      's',
      't',
      'u',
      'v',
      'w',
      'x',
      'y',
      'z'
    ];
    List<String> specialCharacters = [
      '!',
      '@',
      '#',
      '%',
      '^',
      '&',
      '*',
      '(',
      ')',
      '_',
      '-',
      '+',
      '=',
      '}',
      '{',
      '£',
      ']',
      '['
    ];

    String password = password_generator.generatePassword(
        8, numbers, capitalLetters, smallLetters, specialCharacters);
    expect(password.length, 8);
  });

  // Add more test cases as needed
}
