// Viết game búa kéo bao, đấu với máy.

// Người chơi enter lựa chọn. Máy random. sau đó so sánh kết quả.

// Nhập exit để thoát, Sau khi thoát thì thông báo điểm số

import 'dart:io';
import 'dart:math';

// void getName(){
//       print("Player: $player\t Machine: $machine\t => Bạn Hòa");
// }
class GameTurn {
  static const keo = 1;
  static const bua = 2;
  static const bao = 3;
  static const exit = 0;

  static String getName(int number) {
    switch (number) {
      case 1:
        return "Kéo";
      case 2:
        return "Búa";
      case 3:
        return "Bao";
    }
    return "N/A";
  }
}

class GameResult {
  static const thang = 1;
  static const thua = 2;
  static const hoa = 3;

  static String getName(int number) {
    switch (number) {
      case 1:
        return "Thắng";
      case 2:
        return "Thua";
      case 3:
        return "Hòa";
    }
    return "N/A";
  }
}

void showFinalScore(int win, int lose) {
  print("Tổng điểm: ${win - lose} ($win win/ $lose lose)");
}

int rule(int player, int machine) {
  if (player == machine) {
    return GameResult.hoa;
  }
  // bua > keo
  // keo > bao
  // bao > bua
  if ((player == GameTurn.bua && machine == GameTurn.keo) ||
      (player == GameTurn.keo && machine == GameTurn.bao) ||
      (player == GameTurn.bao && machine == GameTurn.bua)) {
    return GameResult.thang;
  }
  return GameResult.thua;
}

void printResult(
    {required int player, required int machine, required int result}) {
  print(
      "Player: ${GameTurn.getName(player)}\t Machine:${GameTurn.getName(machine)}\t => Bạn ${GameResult.getName(result)}");
}

void main() {
  int win = 0;
  int lose = 0;
  while (true) {
    int player;

    print("1-Kéo ,2-Búa, 3-Bao, 0-Exit : ");
    try {
      player = int.parse(stdin.readLineSync().toString());
      if (player > 3 || player < 1) {
        print("Input không hợp lệ");
        continue;
      }
    } catch (_) {
      print("Input không hợp lệ");
      continue;
    }
    if (player == GameTurn.exit) {
      showFinalScore(win, lose);
      break;
    }

    int machine = (Random().nextInt(3) + 1);
    final result = rule(player, machine);
    printResult(
        player: player, machine: machine, result: rule(player, machine));
    if (result == GameResult.thua) {
      lose++;
    } else if (result == GameResult.thang) {
      win++;
    }
  }
}
