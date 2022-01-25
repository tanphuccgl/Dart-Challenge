// Viết game “*cows and bulls*”

// - Random 4 số
// - Hỏi user đoán 4 số đó. Nếu với mỗi số nếu nếu đoán đúng cả vị trí thì cows ++, nếu có
// chứa nhưng mà khác vị trí thì bulls++
// - Khi đoán đúng cả 4 số thì thắng

// Ví dụ random 3684, và người dùng nhập 1234 thì cows = 1 (số 4) và bulls = 1 (số 3)
import 'dart:io';
import 'dart:math';

// 1. random
// 2. vonglap
// 3 .nhap so n thoa~ :
//    - neu n != type number => nhap lai
//    - neu n kh thuoc (1000;9999) => nhap lai
// 4.
//    - th1: neu n = so random => thang => break;
//    - th2: neu n != so random
//       + th2.1: nếu trong n có chứa số trùng
//            . th2.2.1: nếu đúng cả vị trí => cows++ && quay lai b3
//            . th2.2.2: nếu # vị trí => bulls++ && quay lai b3
//       + th2.2: nếu trong n không có chứa số trùng => quay lai b3

bool checkDuplicateNumber(int number, int luckyNumber) {
  for (int i = 0; i < number.toString().length; i++) {
    for (int j = 0; j < luckyNumber.toString().length; j++) {
      if (number.toString().contains(luckyNumber.toString()[j])) {
        return true;
      }
    }
  }
  return false;
}

void playGame() {
  int cows;
  int number;
  int bulls;
  int luckyNumber = (Random().nextInt(9999) + 1000);
 // luckyNumber = 3684;

  while (true) {
    cows = 0;
    bulls = 0;
    print("Đoán số: ");

    try {
      number = int.parse(stdin.readLineSync().toString());
      if (number > 9999 || number < 1000) {
        print("Input không hợp lệ");
        continue;
      }
    } catch (_) {
      print("Input không hợp lệ");
      continue;
    }

    if (number == luckyNumber) {
      print("Số bạn chọn bằng với số may mắn: $luckyNumber");
      break;
    } else {
      if (checkDuplicateNumber(number, luckyNumber)) {
        for (int i = 0; i < number.toString().length; i++) {
          for (int j = 0; j < luckyNumber.toString().length; j++) {
            if (number.toString()[i] == luckyNumber.toString()[j] && i == j) {
              cows++;
            } else if (number.toString()[i] == luckyNumber.toString()[j] &&
                i != j) {
              bulls++;
            }
          }
        }
        print("Số $number có cows = $cows va bulls = $bulls ");
      } else {
        print("Số $number có cows = 0 va bulls = 0: ");
      }
    }
  }
}

void main() {
  playGame();
}
