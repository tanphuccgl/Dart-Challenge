import 'package:test/test.dart';
import '../bin/uocso.dart';

void main() {
  group('Unit Test 1 - Ước số', () {
    test('Input = 10', () {
      expect(uocSoOf(5), [1, 2, 5, 10]);
    });

    test('Input = 5', () {
      expect(uocSoOf(5), [1, 5]);
    });

    test('Input = 1', () {
      expect(uocSoOf(1), [1]);
    });
    test('Input = 0', () {
      expect(uocSoOf(0), []);
    });
    test('Invalidater input', () {
      expect(uocSoOf(-1), []);
    });
  });
}
