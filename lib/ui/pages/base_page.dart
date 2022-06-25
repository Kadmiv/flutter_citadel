import 'package:flutter/material.dart';
import 'package:flutter_citadel/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('game'),
      ),
      body: Center(
        child: Text(
          "Game will be here :)"
        ),
      ),
    );
  }
}
