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
}

class GameResult {
  static const thang = 4;
  static const thua = 5;
  static const hoa = 6;
}

void score(int win, int lose) {
  if (win >= lose) {
    print("Tổng điểm: ${win - lose} ($win win/ $lose lose)");
  } else {
    print("Tổng điểm: 0 ($win win/ $lose lose)");
  }
}

int rule(int player, int machine) {
  if (player == machine) {
    return GameResult.hoa;
  } else if (player > machine) {
    if (player == GameTurn.bao && machine == GameTurn.keo) {
      return GameResult.thua;
    }
    return GameResult.thang;
  } else if (player < machine) {
    if (player == GameTurn.keo && machine == GameTurn.bao) {
      return GameResult.thang;
    }
    return GameResult.thua;
  } else {
    return -1;
  }
}

void printResult(
    {required int player, required int machine, required int result}) {
  print(
      "Player: ${getName(player)}\t Machine:${getName(machine)}\t => Bạn ${getName(result)}");
}

String getName(int number) {
  switch (number) {
    case 1:
      return "Kéo";
    case 2:
      return "Búa";
    case 3:
      return "Bao";
    case 4:
      return "Thắng";
    case 5:
      return "Thua";
    case 6:
      return "Hòa";
  }
  return "N/A";
}

int whoWin(int player) {
  var rng = Random();

  int machine =
      (rng.nextInt([GameTurn.keo, GameTurn.bua, GameTurn.bao].length) + 1);

  switch (machine) {
    case GameTurn.keo:
      printResult(
          player: player, machine: machine, result: rule(player, machine));

      break;

    case GameTurn.bua:
      printResult(
          player: player, machine: machine, result: rule(player, machine));
      break;
    case GameTurn.bao:
      printResult(
          player: player, machine: machine, result: rule(player, machine));
      break;
  }
  return rule(player, machine);
}

int playGame(int player) {
  int temp = 0;
  switch (player) {
    case GameTurn.keo:
      temp = whoWin(player);
      break;
    case GameTurn.bua:
      temp = whoWin(player);
      break;
    case GameTurn.bao:
      temp = whoWin(player);
      break;
    case GameTurn.exit:
      break;
    default:
      print("Input không hợp lệ");
      break;
  }
  return temp;
}

void main() {
  int win = 0;
  int lose = 0;
  while (true) {
    int player;
    int temp;

    print("1-Kéo ,2-Búa, 3-Bao, 0-Exit : ");
    player = int.parse(stdin.readLineSync().toString());

    temp = playGame(player);
    if (temp == GameResult.thua) {
      lose++;
    } else if (temp == GameResult.thang) {
      win++;
    }
    if (player == 0) {
      score(win, lose);
      break;
    }
  }
}
