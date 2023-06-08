import 'dart:math';

String getRandomElement(List<String> list) {
  Random random = Random();
  int index = random.nextInt(list.length);
  return list[index];
}

String generatePassword(
    int y,
    List<String> numbers,
    List<String> capitalLetters,
    List<String> specialCharacters,
    List<String> smallLetters) {
  int characterNumber;
  if (y > 0) {
    characterNumber = y;
  } else {
    characterNumber = 4;
  }

  String password = '';

  for (int i = 0; i < characterNumber; i++) {
    password += getRandomElement(numbers);
    password += getRandomElement(capitalLetters);
    password += getRandomElement(specialCharacters);
    password += getRandomElement(smallLetters);
  }
  password = password.substring(0, characterNumber);
  return password;
}
