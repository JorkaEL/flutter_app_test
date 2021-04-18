import 'package:flutter/material.dart';
import 'package:flutter_app_test/domain/entities/user.entity.dart';
import 'package:flutter_app_test/presentation/pages/detail/detail.page.dart';
import 'package:flutter_app_test/presentation/pages/initial/initial.page.dart';
import 'package:flutter_app_test/presentation/pages/list/list.page.dart';
import 'package:flutter_app_test/presentation/utils/navigation.constants.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Widget page = Container();
  switch (settings.name) {
    case InitialRoute:
      page = InitialPage();
      break;
    case ListRoute:
      page = ListPage();
      break;
    case DetailRoute:
      page = DetailPage(user: (settings.arguments as dynamic)['user'] as User, index: (settings.arguments as dynamic)['index'] as int);
      break;
  }

  return MaterialPageRoute(builder: (context) => page);
}
