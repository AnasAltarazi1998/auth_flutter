class AuthService {
  bool login({required String email, required String password}) {
    bool result = false;
    result = email.contains('@');
    result = email.endsWith('.com');
    result = email.length > 7;
    result = password.length > 8;
    return result;
  }
}
