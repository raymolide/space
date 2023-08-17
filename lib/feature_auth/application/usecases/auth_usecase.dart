import 'package:space/feature_auth/domain/models/user.dart';
import 'package:space/feature_auth/domain/repositories/user_repository.dart';

class AuthUseCase {
  final UserRepository userRepository;

  AuthUseCase(this.userRepository);

  Future<User?> getUserById(String id) async {
    return await userRepository.getUserById(id);
  }

  Future<User?> authenticateUser(String username, String password) async {
    return await userRepository.authenticateUser(username, password);
  }
}
