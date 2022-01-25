//Random số từ 1 đến 100, sau đó hỏi user đoán. và gợi ý user nhỏ hơn, lớn hơn, hay bằng

//Nếu bằng thì user thắng, reset game và trả về điểm số

import 'dart:io';
import 'dart:math';

void playGame() {
  var rng = Random();
  int score = 100;
  int number;
  int luckyNumber = (rng.nextInt(100) + 1);
  print("Đoán số: ");
  number = int.parse(stdin.readLineSync().toString());
  while (true) {
    if (number > luckyNumber) {
      score--;
      print("Số nhỏ hơn $number: ");
      number = int.parse(stdin.readLineSync().toString());
    } else if (number < luckyNumber) {
      score--;
      print("Số lớn hơn $number: ");
      number = int.parse(stdin.readLineSync().toString());
    } else {
      print("Số bạn chọn bằng với số may mắn: $luckyNumber");
      print("Điểm đạt được: $score\n\n");
      break;
    }
  }
}

void main() {
  playGame();
}
