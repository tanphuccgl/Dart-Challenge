import 'package:test/scaffolding.dart';
import 'package:test/test.dart';
import '../bin/password.dart';

void main() {
  group("Unit test 7 - Validate password", () {
    test("pass: rỗng", () {
      expect(validatePass(""),false);
    });
     test("pass: 6 ký tự, 1 số, 1 chữ, 1 ký tự đặc biệt", () {
      expect(validatePass("phuclevi1@"),true);
    });
     test("pass:5 ký tự, 1 số, 1 chữ, 1 ký tự đặc biệt ", () {
      expect(validatePass("lev1@"),false);
    });
     test("pass: 6 ký tự, 1 số,1 chữ", () {
      expect(validatePass(""),false);
    });
     test("pass: 6 ký tự, 1 số, 1 ký tự đặc biệt", () {
      expect(validatePass(""),false);
    });
     test("pass 6 ký tự, 1 chữ, 1 ký tự đặc biệt", () {
      expect(validatePass(""),false);
    });
     test("pass: > 6 ký tự, nhiều số, chữ và ký tự đặc biệt", () {
      expect(validatePass("tanphuclevi123456&*@!"),true);
    });
         test("pass: có chứa ký tự space", () {
      expect(validatePass("tanphucle vi123456&*@!"),false);
    });
  });
}
