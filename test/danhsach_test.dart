import 'package:test/test.dart';
import '../bin/danhsach.dart';

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
  List<int> b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
  group('Unit Test 2 - Lọc các số trùng', () {
    test('trường hợp theo đề bài cho trước', () {
      expect(filterDuplicates(a, b), [1, 2, 3, 5, 8, 13]);
    });
    test('trường hợp có nhiều giá trị trùng nhau', () {
      expect(filterDuplicates([-2,4,-5,0,0,0,0], [-3,5,-9,0]), [0]);
    });
    test('trường hợp hai mảng rỗng', () {
      expect(filterDuplicates([], []), []);
    });
     test('trường hợp một mảng rỗng và một mảng có giá trị', () {
      expect(filterDuplicates([1,2,3,5,8], []), []);
    });
   
  });
}
