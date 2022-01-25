//Random số từ 1 đến 100, sau đó hỏi user đoán. và gợi ý user nhỏ hơn, lớn hơn, hay bằng

//Nếu bằng thì user thắng, reset game và trả về điểm số

import 'dart:io';
import 'dart:math';

// radom
// ___
// nhap
// if = win
// thong bao
// ---
void playGame() {
  var rng = Random();
  int score = 100;
  int luckyNumber = (rng.nextInt(100) + 1);
  print(
      'Random số từ 1 đến 100, sau đó hỏi user đoán. và gợi ý user nhỏ hơn, lớn hơn, hay bằng');
  while (true) {
    print("Đoán số: ");
    var number = int.parse(stdin.readLineSync().toString());
    //
    if (number == luckyNumber) {
      print("Số bạn chọn bằng với số may mắn: $luckyNumber");
      print("Điểm đạt được: $score\n\n");
      break;
    } else {
      score--;
      print("Số ${number < luckyNumber ? 'nhỏ' : 'lớn'} hơn $number: ");
      number = int.parse(stdin.readLineSync().toString());
    }
  }
}

void main() {
  playGame();
}
