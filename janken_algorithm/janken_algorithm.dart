import 'dart:io';
import 'dart:math' as math;

enum Hand {
  rock,
  scissors,
  paper,
}

void main(List<String> arguments) {
  print("出す手を選んでください。グー(=0), チョキ(=1), パー(=2)");
  String input = stdin.readLineSync() ?? '';
  int number = int.parse(input);
  switch (number) {
    case 0:
      janKen(you: Hand.rock);
      break;
    case 1:
      janKen(you: Hand.scissors);
      break;
    case 2:
      janKen(you: Hand.paper);
      break;
  }
}

void janKen({required Hand you}) {
  var random = math.Random();
  int chNum = random.nextInt(2);
  Hand ch = Hand.rock;
  switch (chNum) {
    case 0:
      ch = Hand.rock;
      break;
    case 1:
      ch = Hand.scissors;
      break;
    case 2:
      ch = Hand.paper;
      break;
  }

  if (you == Hand.paper && ch == Hand.rock) {
    print("cp: rock, you won!");
  } else if (you == Hand.scissors && ch == Hand.paper) {
    print("cp: paper, you won!");
  } else if (you == Hand.rock && ch == Hand.scissors) {
    print("cp: scissors, you won!");
  } else if (you == Hand.paper && ch == Hand.paper) {
    print("cp: paper, draw...");
  } else if (you == Hand.scissors && ch == Hand.scissors) {
    print("cp: scissors, draw...");
  } else if (you == Hand.rock && ch == Hand.rock) {
    print("cp: rock, draw...");
  } else if (you == Hand.paper && ch == Hand.scissors) {
    print("cp: scissors, you lost.");
  } else if (you == Hand.scissors && ch == Hand.rock) {
    print("cp: rock, you lost.");
  } else if (you == Hand.rock && ch == Hand.paper) {
    print("cp: paper, you lost.");
  }
}
