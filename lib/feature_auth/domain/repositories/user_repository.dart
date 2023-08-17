import 'package:space/feature_auth/domain/models/user.dart';

abstract class UserRepository {
  Future<User> getUserById(String id);
  Future<void> updateUser(User updatedUser);
  Future<User?> authenticateUser(String username, String password);
}
