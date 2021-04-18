import 'package:flutter_app_test/domain/entities/user.entity.dart';

/// Interface pour le repository User
abstract class IUserRepository {
  Future<List<User>> getUsers(int page);
}
