import 'package:flutter_app_test/data/utils/dependencies.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/domain/repositories/iuser.repository.dart';

/// Use Cases pour l'entité User
class UsersUseCases {
  IUserRepository _repository = serviceLocator<IUserRepository>();

  Future<List<User>> getUsers(int page) => _repository.getUsers(page);
}
