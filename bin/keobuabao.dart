// Viết game búa kéo bao, đấu với máy.

// Người chơi enter lựa chọn. Máy random. sau đó so sánh kết quả.

// Nhập exit để thoát, Sau khi thoát thì thông báo điểm số

import 'dart:io';

import 'dart:math';

String playGame(
  String player,
) {
  var rng = Random();
  String machine = (rng.nextInt(3) + 1).toString();
  String result = "";
  switch (player) {
    case "1":
      switch (machine) {
        case "1":
          print("Player: Kéo\t Machine: Kéo\t => Bạn Hòa");

          result = "hoa";
          break;
        case "2":
          print("Player: Kéo\t Machine: Búa\t => Bạn Thua");
          result = "thua";

          break;
        case "3":
          print("Player: Kéo\t Machine: bao\t => Bạn Thắng");
          result = "thang";

          break;
      }
      break;
    case "2":
      switch (machine) {
        case "1":
          print("Player: Búa\t Machine: Kéo\t => Bạn Thắng");
          result = "thang";
          break;
        case "2":
          print("Player: Búa\t Machine: Búa\t => Bạn Hòa");
          result = "hoa";
          break;
        case "3":
          print("Player: Búa\t Machine: bao\t => Bạn Thua");
          result = "thua";
          break;
      }
      break;
    case "3":
      switch (machine) {
        case "1":
          print("Player: bao\t Machine: Kéo\t => Bạn Thua");
          result = "thua";
          break;
        case "2":
          print("Player: bao\t Machine: Búa\t => Bạn Thắng");
          result = "thang";
          break;
        case "3":
          print("Player: bao\t Machine: bao\t => Bạn Hòa");
          result = "hoa";
          break;
      }
      break;
    case "exit":
      break;
    default:
      print("Input không hợp lệ");
      break;
  }
  return result;
}

void main() {
  int win = 0;
  int lose = 0;
  while (true) {
    String player;
    String temp;

    print("1-Kéo ,2-Búa, 3-Bao, Exit-Logout : ");
    player = stdin.readLineSync().toString();
    temp = playGame(player);
    if (temp == "thua") {
      lose++;
    } else if (temp == "thang") {
      win++;
    }
    if (player == "exit") {
      score(win,lose);
      break;
    }
  }
}

void score(int win, int lose) {
  if (win >= lose) {
    print("Tổng điểm: ${win - lose} ($win win/ $lose lose)");
  } else {
    print("Tổng điểm: 0 ($win win/ $lose lose)");
  }
}
