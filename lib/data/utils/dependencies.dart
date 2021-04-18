import 'package:flutter_app_test/data/utils/dependencies.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

/// Service locator pour utilisation de GetIt
final serviceLocator = GetIt.instance;

@InjectableInit()
void configureDependencies() => $initGetIt(serviceLocator);
