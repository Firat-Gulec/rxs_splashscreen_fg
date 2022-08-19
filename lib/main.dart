import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rxs_spashscreen_fg/core/Init/lang/language_manager.dart';
import 'package:rxs_spashscreen_fg/core/Init/navigation/navigation_route.dart';
import 'package:rxs_spashscreen_fg/core/Init/navigation/navigation_service.dart';
import 'package:rxs_spashscreen_fg/core/auth_manager.dart';
import 'package:rxs_spashscreen_fg/core/constants.dart';
import 'package:rxs_spashscreen_fg/login/view/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();


  runApp(
    MultiProvider(
      providers: [
        Provider<AuthenticationManager>(
          create: (context) => AuthenticationManager(context: context),
        )
      ],
      child: EasyLocalization(
        child: MyApp(),
        supportedLocales: LanguageManager.instance.supportedLocales,
        path: AppConstant.LANG_PATH,
        startLocale: LanguageManager.instance.EN_LOCALE,
      ),
    ),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      onGenerateRoute: NavigationRoute.instance.generateRoute,
      navigatorKey: NavigationService.instance.navigatorKey,
    );
  }
}
