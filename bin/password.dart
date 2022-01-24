// Viết unit test và function

// Validate password

// - Tối thiểu 6 ký tự
// - Chứa ít nhất 1 số
// - Chứa ít nhất 1 ký tự đặc biệt
// - Chứa ít nhất 1 chữ cái

bool validatePass(String password) {
  int minCharacters = 6;
  bool hasNumber = password.contains(RegExp(r'[0-9]'));
  bool hasAlphabet =
      password.contains(RegExp(r'[a-z]')) | password.contains(RegExp(r'[A-Z]'));
  bool hasSpecialCharacters =
      password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
  bool hasMinLength = password.length >= minCharacters;
  bool hasSpace = password.contains(RegExp(r'[ ]'));
  return hasNumber & hasAlphabet & hasSpecialCharacters & hasMinLength & !hasSpace;
}
