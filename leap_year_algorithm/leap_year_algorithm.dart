import 'dart:io';

void main(List<String> arguments) {
  print("西暦を入力してください。");
  String input = stdin.readLineSync() ?? '';
  int year = int.parse(input);
  isLeapYear(year: year);
}

void isLeapYear({required int year}) {
  bool isLeapYear = year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);
  if (isLeapYear) {
    print("True");
  } else {
    print("False");
  }
}
