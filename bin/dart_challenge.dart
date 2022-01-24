import 'dart:io';

void main() {
  print("input");
  int number;
  List<int> list = [];
  do {
    number = int.parse(stdin.readLineSync().toString());
    if (number <= 0) {
      print("input");
    }
  } while (number <= 0);
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      list.add(i);
    }
  }
  print(list);
}
