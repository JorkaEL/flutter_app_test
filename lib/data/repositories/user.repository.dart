import 'package:flutter_app_test/data/api/dto/user.dto.dart';
import 'package:flutter_app_test/data/api/user.api.dart';
import 'package:flutter_app_test/data/transformers/user.transformer.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/domain/repositories/iuser.repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final UserApi _userApi;

  UserRepository(this._userApi);

  @override
  Future<List<User>> getUsers(int page) async {
    List<DtoUser> _dtoUsers;
    try {
      _dtoUsers = await _userApi.getRandomUsers(20, page, 'testApp');
      return _dtoUsers.map((u) => userFromDto(u)).toList();
    } catch (e) {
      rethrow;
    }
  }
}
