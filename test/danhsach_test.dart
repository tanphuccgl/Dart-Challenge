import 'package:test/test.dart';
import '../bin/danhsach.dart';

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
  List<int> b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
  group('Unit Test 2 - Lọc các số trùng', () {
    test('Input = list a, list b', () {
      expect(filterDuplicates(a, b), [1, 2, 3, 5, 8, 13]);
    });
    test('Input = list [-2,4,-5,0,0,0,0], list [-3,5,-9,0]', () {
      expect(filterDuplicates([-2,4,-5,0,0,0,0], [-3,5,-9,0]), [0]);
    });
  });
}
