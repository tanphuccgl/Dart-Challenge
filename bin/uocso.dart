// in
List<int> uocSoOf(int number) {
  List<int> list = [];
  for (int i = 1; i <= number; i++) {
    if (number % i == 0) {
      list.add(i);
    }
  }
  return list;
}
