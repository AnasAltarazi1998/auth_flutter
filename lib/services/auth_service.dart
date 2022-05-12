class AuthService {
  Future<bool> login({required String email, required String password}) async {
    bool result = true;
    result = result && email.contains('@');
    result = result && email.endsWith('.com');
    result = result && email.length > 7;
    result = result && password.length > 8;
    result = await Future.delayed(
      const Duration(seconds: 3),
      () => result,
    );
    return result;
  }
}
