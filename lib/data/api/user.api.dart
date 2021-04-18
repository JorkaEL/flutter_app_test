import 'package:flutter_app_test/data/api/clients/user.client.dart';
import 'package:flutter_app_test/data/api/dto/user.dto.dart';
import 'package:flutter_app_test/data/api/services/api.service.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class UserApi {
  final ApiService _service;
  UserApi(this._service);

  Future<List<DtoUser>> getRandomUsers(int maxResult, int page, String seed) async {
    final client = UserClient(_service.getDio(), baseUrl: 'https://randomuser.me/api');

    List<DtoUser> results;
    results = await client.getPageUsers(page, maxResult, seed).then((it) {
      return it.results;
    }).catchError((Object obj) {
      throw Error();
    });

    return results;
  }
}
