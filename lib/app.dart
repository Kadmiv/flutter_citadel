import 'package:flutter/material.dart';
import 'package:flutter_citadel/generated/l10n.dart';
import 'package:flutter_citadel/ui/pages/battle_field_page/battle_field_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // locale: context.watch<AppSettingsProvider>().locale,
      supportedLocales: S.delegate.supportedLocales,
      // home: const BasePage(),
      home: const BattleFieldPage(),
      // home: const DistrictsBoard(),
      // home: const MainPlayerFieldPage(),
    );
  }
}
