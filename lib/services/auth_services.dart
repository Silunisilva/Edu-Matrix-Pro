// lib/services/auth_service.dart
class AuthService {
  bool validateUser(String username, String password) {
    // Simple hardcoded validation
    return username == 'admin' && password == '1234';
  }
}
