import 'package:password_generator/password_generator.dart'
    as password_generator;
//import "dart:math";
import 'dart:io';

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
  "%",
  "^",
  "&",
  "*",
  "(",
  ")",
  "_",
  "-",
  "+",
  "=",
  "}",
  "{",
  "£",
  "]",
  "["
];

void main(List<String> arguments) {
  //print('Hello world: ${password_generator.calculate()}!');
  try {
    stdout.write("How many characters/If you don't choose any by default 4 : ");
    String input = stdin.readLineSync()!;

    int characters = int.parse(input);
    String password = password_generator.generatePassword(
        characters, numbers, capitalLetters, smallLetters, specialCharacters);
    print("Generated Password: $password");
  } catch (e) {
    print(e);
  }
}
