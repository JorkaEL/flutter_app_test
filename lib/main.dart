import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_test/data/utils/dependencies.dart';
import 'package:flutter_app_test/domain/utils/app_theme.dart';
import 'package:flutter_app_test/presentation/utils/navigation.constants.dart';
import 'package:flutter_app_test/presentation/utils/navigation.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale('fr'), Locale('en')], useOnlyLangCode: true, path: 'assets/i18n', fallbackLocale: Locale('en'), child: App()));
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App Test',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      onGenerateRoute: generateRoute,
      initialRoute: InitialRoute,
    );
  }
}
